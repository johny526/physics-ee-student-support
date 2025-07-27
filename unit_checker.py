# Unit Checker for Physics Answers

def check_units(force, mass, acceleration):
    if round(force, 2) == round(mass * acceleration, 2):
        return "Units are consistent: F = ma"
    else:
        return "Inconsistent: Check calculations or units"

# Example usage:
F = 49  # Newton
m = 5   # kg
a = 9.8 # m/s²

print(check_units(F, m, a))
