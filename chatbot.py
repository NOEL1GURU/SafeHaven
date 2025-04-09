def symptom_checker():
    print("Do you have unusual discharge? (yes/no)")
    response = input().lower()
    if response == "yes":
        return "Possible STI. Visit a clinic."
    return "Monitor your health."

print(symptom_checker())