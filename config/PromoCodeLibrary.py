import random
import string

class PromoCodeLibrary: # to run this file: python .\config\PromoCodeLibrary.py

    def generate_promotional_code(self, discount_digit):
        # Validate the discount digit
        if not isinstance(discount_digit, int) or discount_digit not in range(1, 10):
            raise ValueError("Discount digit must be an integer between 1 and 9.")

        # Generate random characters for each part of the code
        part1_letters = ''.join(random.choices(string.ascii_uppercase, k=2))
        part1 = part1_letters + str(discount_digit)
        
        part2 = ''.join(random.choices(string.ascii_uppercase, k=3))
        
        part3_digits = [random.randint(0, 9) for _ in range(2)]
        part3_first_digit = str(part3_digits[0])  # Convert to string here
        part3_second_digit = str(part3_digits[1])  # Convert to string here

        # Calculate check digit
        check_sum = discount_digit + int(part3_first_digit) + int(part3_second_digit)
        check_digit = str(check_sum % 10)  # Convert check digit to string

        # Ensure each part is a string during concatenation
        promo_code = f"{part1}-{part2}-{part3_first_digit}{part3_second_digit}{check_digit}"
        return promo_code


# The following lines are used to test the function by calling it directly
# if __name__ == "__main__":
#     promo_code_lib = PromoCodeLibrary()
#     print(promo_code_lib.generate_promotional_code(3))  # Should generate a valid code with a 3 as discount digit
