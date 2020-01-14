# Form Builder Component Acceptance Tests

This will spin up the Form Builder environment for regression testing and debugging.

## Usage

### Setup

Run the following command to clone all the needed repositories

```
make setup
```

### Serve

```
make serve
```

You can visit ports on localhost to see the component forms.

- http://localhost:3080 Autocomplete
- http://localhost:3081 Checkboxes
- http://localhost:3082 Date
- http://localhost:3083 Email
- http://localhost:3084 Number
- http://localhost:3085 Radios
- http://localhost:3086 Select
- http://localhost:3087 Text
- http://localhost:3088 Textarea

### Run acceptance specs

```
make spec
```
