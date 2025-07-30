# Logbook Template

A professional Typst template for creating academic and engineering logbooks with a clean, structured layout.

## Overview

This template provides a standardized format for practical logbooks commonly used in engineering and science courses. It features a custom header with institutional branding, proper pagination, and formatting optimized for academic documentation.

## Required Libraries

This template uses several Typst packages to provide enhanced functionality:

### Core Dependencies

- **`@preview/codly:1.3.0`**: Advanced code syntax highlighting and formatting
  - Provides beautiful code blocks with line numbers and syntax coloring
  - Supports multiple programming languages out of the box

- **`@preview/codly-languages:0.1.1`**: Extended language support for code highlighting
  - Adds support for additional programming languages beyond the default set
  - Works in conjunction with codly for comprehensive syntax highlighting

- **`@preview/wavy:0.1.3`**: Advanced diagram and waveform rendering
  - Enables creation of technical diagrams and waveforms
  - Particularly useful for engineering and electronics documentation
  - Use with ````wavy` code blocks for diagram markup

## File Structure

```
├── main.typ          # Main document file (your logbook content)
├── template.typ      # Template definition and styling
└── imgs/
    └── header art.png # Header artwork/logo
```

## Quick Start

1. **Clone or download** this template to your local machine

2. **Install Typst** if you haven't already:
   ```bash
   # Using cargo (Rust package manager)
   cargo install --git https://github.com/typst/typst --locked typst-cli
   
   # Or download from https://github.com/typst/typst/releases
   ```

3. **Customize the header information** in `main.typ`:
   ```typst
   #show: Logbook.with(
     prac_title: [Your Practical Title],
     prac_number: "1",
     fan: "your_student_id",
     name: "Your Full Name",
     subject_code: "SUBJ1234",
     subject_name: "Your Subject Name"
   )
   ```

4. **Replace the content** in `main.typ` with your logbook entries

5. **Compile the document**:
   ```bash
   typst compile main.typ
   ```

## Usage Guide

### Tables

Tables are automatically styled with bold headers:

```typst
#table(
  table.header[Column 1][Column 2],
  [Data 1],[Data 2],
  [Data 3],[Data 4],
  columns: (1fr, 1fr)
)
```

### Including Code

Use code blocks with language specification for syntax highlighting:

````typst
```python
def calculate_average(numbers):
    return sum(numbers) / len(numbers)
```
````

### Creating Timing Diagrams

Use wavy blocks for technical diagrams:

````typst
```wavy
[Your wavy diagram markup here]
```
````

### Mathematical Expressions

Include equations using Typst's built-in math support:

```typst
$ F = m a $

$ x = (-b ± sqrt(b^2 - 4a c)) / (2a) $
```

## Customization

### Changing the Header Image

Replace `imgs/header art.png` with your institution's logo or header artwork. Ensure the image maintains good quality at the display size.

### Modifying Page Layout

Edit the page margins and formatting in `template.typ`:

```typst
page(
  margin: (left: 1cm, right: 1cm, top: 1.5cm, bottom: 1.5cm),
  // ... other page settings
)
```

### Getting Help

- [Typst Documentation](https://typst.app/docs/)
- [Typst Community Forum](https://github.com/typst/typst/discussions)

## License

This template is provided as-is for educational use. Modify and distribute freely for academic purposes.
