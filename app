import streamlit as st

# 1. Title and Text
st.title("My First Python Web App 🚀")
st.write("Welcome! This is a simple BMI Calculator built with Python.")

# 2. Sidebar for inputs
st.sidebar.header("Input Data")
weight = st.sidebar.number_input("Enter your Weight (kg)", min_value=10.0, value=70.0)
height = st.sidebar.number_input("Enter your Height (m)", min_value=0.5, value=1.75)

# 3. The Logic
bmi = weight / (height ** 2)

# 4. Display Results
st.subheader("Your Results")
st.metric(label="Your BMI", value=f"{bmi:.2f}")

# 5. Conditional Logic (If statements)
if bmi < 18.5:
    st.warning("Category: Underweight")
elif 18.5 <= bmi < 25:
    st.success("Category: Healthy Weight")
else:
    st.error("Category: Overweight")

# 6. Add a chart (just for fun)
st.write("---")
st.write("### BMI Reference Chart")
chart_data = {"Category": ["Underweight", "Healthy", "Overweight"], "Limit": [18.5, 25, 30]}
st.bar_chart(chart_data, x="Category", y="Limit")
