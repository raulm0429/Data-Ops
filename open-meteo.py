import pandas as pd
import requests

# Extract
response = requests.get(
    "https://api.open-meteo.com/v1/forecast?latitude=37.69&longitude=-97.34&hourly=temperature_2m"
)
data = response.json()

print(data)

# Transform
df = pd.DataFrame({
    'Time': data['hourly']['time'],
    'Temperature (C)': data['hourly']['temperature_2m']
})

# Load
df.to_csv('forecast.csv', index=False)
print("✅ Weather forecast saved to CSV!")
