#!/usr/bin/env python3
"""
Fuel Dispenser Chart Generator - Complete Production Version
Generates professional, high-quality charts with multiple export formats
"""

import math
from PIL import Image, ImageDraw, ImageFont
import csv
import sys
from pathlib import Path

class FuelDispenserChart:
    """Professional fuel dispenser chart generator"""
    
    def __init__(self, price: float, max_rupees: int = 10000, step: int = 50, 
                 rows: int = 14, columns: int = 40):
        self.price = price
        self.max_rupees = max_rupees
        self.step = step
        self.rows = rows
        self.columns = columns
        self.rupees = []
        self.codes = []
        self.grid_data = []
        
    def calculate_code(self, rupees: float) -> str:
        """Convert rupees to fuel code (liters-points-isharas)"""
        total_points = (rupees / self.price) * 10
        full_liters = int(total_points // 10)
        remaining_points = total_points - (full_liters * 10)
        points = int(remaining_points)
        fractional_point = remaining_points - points
        isharas = int(fractional_point * 5)
        
        if full_liters == 0:
            if points == 0 and isharas == 0:
                return "0"
            code = ""
            if points > 0:
                code = f"-{points}"
            if isharas > 0:
                code += "-" + "I" * isharas
            return code
        else:
            code = str(full_liters)
            if points > 0:
                code += f"-{points}"
            if isharas > 0:
                code += "-" + "I" * isharas
            return code
    
    def generate_rupee_list(self) -> list:
        """Generate list of rupee amounts including steps and exact liter prices"""
        rupees_set = set()
        
        # Add step amounts (50, 100, 150, ...)
        current = self.step
        while current <= self.max_rupees:
            rupees_set.add(current)
            current += self.step
        
        # Add exact liter prices
        n = 1
        while True:
            exact_price = self.price * n
            if exact_price > self.max_rupees:
                break
            # Round to nearest whole rupee (0.5 rounds up)
            rounded = int(exact_price + 0.5)
            rupees_set.add(rounded)
            n += 1
        
        return sorted(list(rupees_set))
    
    def generate_grid(self):
        """Generate the grid with RTL, column-major filling"""
        self.rupees = self.generate_rupee_list()
        self.codes = [self.calculate_code(r) for r in self.rupees]
        
        # Create empty grid
        self.grid_data = [[("", "") for _ in range(self.columns)] for _ in range(self.rows)]
        
        # Fill column-major, right-to-left, top-to-bottom
        index = 0
        for col in range(self.columns - 1, -1, -1):  # Right to left
            for row in range(self.rows):  # Top to bottom
                if index < len(self.rupees):
                    self.grid_data[row][col] = (str(self.rupees[index]), self.codes[index])
                    index += 1
    
    def export_png(self, filename: str = "fuel_chart.png", dpi: int = 300):
        """Export chart as high-resolution PNG image (4000x3000+ pixels)"""
        if not self.grid_data:
            self.generate_grid()
        
        # High resolution settings
        scale = 4  # For 300+ DPI equivalent
        cell_width = 160 * scale
        cell_height = 80 * scale
        padding = 10 * scale
        border = 40 * scale
        line_width = 2 * scale
        
        img_width = (self.columns * cell_width) + (2 * border)
        img_height = (self.rows * cell_height) + (2 * border) + (100 * scale)
        
        print(f"Creating PNG: {img_width}x{img_height} pixels...")
        
        # Create image with high DPI
        img = Image.new('RGB', (img_width, img_height), color='white')
        draw = ImageDraw.Draw(img, 'RGB')
        
        # Load high-quality monospace font
        try:
            header_font_size = int(48 * scale)
            cell_font_size = int(38 * scale)
            header_font = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSansMono-Bold.ttf", header_font_size)
            cell_font = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf", cell_font_size)
        except:
            try:
                header_font_size = int(48 * scale)
                cell_font_size = int(38 * scale)
                header_font = ImageFont.truetype("C:\\Windows\\Fonts\\consola.ttf", header_font_size)
                cell_font = ImageFont.truetype("C:\\Windows\\Fonts\\consola.ttf", cell_font_size)
            except:
                header_font = ImageFont.load_default()
                cell_font = ImageFont.load_default()
        
        # Draw title
        title = f"Fuel Dispenser Chart - Rs. {self.price:.1f}/Liter"
        title_bbox = draw.textbbox((0, 0), title, font=header_font)
        title_width = title_bbox[2] - title_bbox[0]
        title_x = (img_width - title_width) // 2
        draw.text((title_x, 10 * scale), title, fill='black', font=header_font)
        
        # Draw grid
        start_y = 80 * scale
        
        # Draw cells
        for row in range(self.rows):
            for col in range(self.columns):
                x = border + (col * cell_width)
                y = start_y + (row * cell_height)
                
                # Draw cell border
                draw.rectangle(
                    [x, y, x + cell_width, y + cell_height],
                    outline='black',
                    width=line_width
                )
                
                # Draw cell content
                rupees_val, code = self.grid_data[row][col]
                
                if rupees_val:
                    # Rupees (top half) - Red color
                    rupees_text = f"Rs.{rupees_val}"
                    rupees_bbox = draw.textbbox((0, 0), rupees_text, font=cell_font)
                    text_w = rupees_bbox[2] - rupees_bbox[0]
                    text_h = rupees_bbox[3] - rupees_bbox[1]
                    draw.text(
                        (x + (cell_width - text_w) // 2, y + (8 * scale)),
                        rupees_text,
                        fill=(211, 47, 47),  # Red
                        font=cell_font
                    )
                    
                    # Separator line
                    draw.line(
                        [(x + 5 * scale, y + cell_height // 2), 
                         (x + cell_width - 5 * scale, y + cell_height // 2)],
                        fill=(200, 200, 200),
                        width=max(1, scale // 2)
                    )
                    
                    # Code (bottom half) - Blue color
                    code_text = code
                    code_bbox = draw.textbbox((0, 0), code_text, font=cell_font)
                    text_w = code_bbox[2] - code_bbox[0]
                    draw.text(
                        (x + (cell_width - text_w) // 2, y + cell_height // 2 + (8 * scale)),
                        code_text,
                        fill=(25, 118, 210),  # Blue
                        font=cell_font
                    )
        
        # Draw grid lines (vertical and horizontal)
        for col in range(self.columns + 1):
            x = border + (col * cell_width)
            draw.line([(x, start_y), (x, start_y + (self.rows * cell_height))], 
                     fill='black', width=line_width)
        
        for row in range(self.rows + 1):
            y = start_y + (row * cell_height)
            draw.line([(border, y), (border + (self.columns * cell_width), y)], 
                     fill='black', width=line_width)
        
        # Save image with high quality
        img.save(filename, quality=95, dpi=(300, 300))
        print(f"✓ PNG saved: {filename} ({img_width}x{img_height}px @ 300 DPI)")
        return filename
    
    def export_csv(self, filename: str = "fuel_chart.csv"):
        """Export chart as CSV (proper 14x40 grid)"""
        if not self.grid_data:
            self.generate_grid()
        
        with open(filename, 'w', newline='') as f:
            writer = csv.writer(f)
            
            # Write rupees grid
            for row in self.grid_data:
                writer.writerow([val[0] for val in row])
            
            writer.writerow([])  # Empty row separator
            
            # Write codes grid
            for row in self.grid_data:
                writer.writerow([val[1] for val in row])
        
        print(f"✓ CSV saved: {filename}")
        return filename
    
    def export_txt(self, filename: str = "fuel_chart.txt"):
        """Export chart as plain text"""
        if not self.grid_data:
            self.generate_grid()
        
        with open(filename, 'w') as f:
            f.write(f"Fuel Dispenser Chart - Rs. {self.price:.1f}/Liter\n")
            f.write("=" * 280 + "\n\n")
            
            # Rupees grid
            f.write("RUPEES GRID:\n")
            f.write("-" * 280 + "\n")
            for row in self.grid_data:
                f.write("".join(f"{val[0]:>8}" for val in row) + "\n")
            
            f.write("\n")
            
            # Codes grid
            f.write("CODES GRID:\n")
            f.write("-" * 280 + "\n")
            for row in self.grid_data:
                f.write("".join(f"{val[1]:>8}" for val in row) + "\n")
        
        print(f"✓ TXT saved: {filename}")
        return filename
    
    def print_to_console(self):
        """Print chart to console"""
        if not self.grid_data:
            self.generate_grid()
        
        print(f"\n{'='*280}")
        print(f"Fuel Dispenser Chart - Rs. {self.price:.1f}/Liter")
        print(f"Grid: {self.rows} rows × {self.columns} columns | Total values: {len(self.rupees)}")
        print(f"{'='*280}\n")
        
        print("RUPEES GRID:")
        print("-" * 280)
        for row in self.grid_data:
            print("".join(f"{val[0]:>8}" for val in row))
        
        print("\n")
        print("CODES GRID:")
        print("-" * 280)
        for row in self.grid_data:
            print("".join(f"{val[1]:>8}" for val in row))
        
        print(f"\n{'='*280}\n")
    
    def verify_output(self):
        """Verify the chart data is correct"""
        if not self.grid_data:
            self.generate_grid()
        
        print("\n📋 VERIFICATION REPORT:")
        print(f"  Price per liter: Rs. {self.price:.2f}")
        print(f"  Max rupees: {self.max_rupees}")
        print(f"  Grid size: {self.rows} × {self.columns}")
        print(f"  Total rupee values: {len(self.rupees)}")
        print(f"  First 5 values: {self.rupees[:5]}")
        print(f"  Last 5 values: {self.rupees[-5:]}")
        print(f"\n  Sample codes:")
        for i in range(min(5, len(self.rupees))):
            print(f"    Rs. {self.rupees[i]:>5} → {self.codes[i]}")


def main():
    """Main CLI interface"""
    print("\n" + "="*60)
    print("  FUEL DISPENSER CHART GENERATOR - Professional Edition")
    print("="*60 + "\n")
    
    # Get user input
    try:
        price_input = input("Enter price per liter (default 408.3): ").strip()
        price = float(price_input) if price_input else 408.3
        
        max_rupees_input = input("Enter max rupees (default 10000): ").strip()
        max_rupees = int(max_rupees_input) if max_rupees_input else 10000
        
        step_input = input("Enter step amount (default 50): ").strip()
        step = int(step_input) if step_input else 50
        
        rows_input = input("Enter grid rows (default 14): ").strip()
        rows = int(rows_input) if rows_input else 14
        
        cols_input = input("Enter grid columns (default 40): ").strip()
        columns = int(cols_input) if cols_input else 40
        
        if price <= 0 or max_rupees <= 0 or step <= 0:
            print("❌ Error: All values must be positive!")
            return
        
    except ValueError:
        print("❌ Error: Invalid input. Please enter valid numbers.")
        return
    
    print(f"\n⏳ Generating chart...")
    print(f"  Price: Rs. {price:.1f}/Liter")
    print(f"  Max: Rs. {max_rupees} | Step: Rs. {step}")
    print(f"  Grid: {rows}×{columns}\n")
    
    # Create and generate chart
    chart = FuelDispenserChart(price=price, max_rupees=max_rupees, step=step, 
                             rows=rows, columns=columns)
    chart.generate_grid()
    
    # Verify
    chart.verify_output()
    
    # Export files
    print(f"\n📦 Exporting files...\n")
    
    base_name = f"fuel_chart_rs{price:.1f}"
    png_file = chart.export_png(f"{base_name}.png")
    csv_file = chart.export_csv(f"{base_name}.csv")
    txt_file = chart.export_txt(f"{base_name}.txt")
    
    # Show console preview
    show_preview = input("\nShow console preview? (y/n): ").strip().lower()
    if show_preview == 'y':
        chart.print_to_console()
    
    print("\n" + "="*60)
    print("✅ CHART GENERATION COMPLETE!")
    print("="*60)
    print(f"\nFiles created:")
    print(f"  1. {png_file} (High-resolution image)")
    print(f"  2. {csv_file} (Spreadsheet format)")
    print(f"  3. {txt_file} (Plain text)")
    print("\n" + "="*60 + "\n")


if __name__ == "__main__":
    main()
