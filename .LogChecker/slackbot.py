from slack_bolt import App

# Initialize the Slack app
app = App(token="xapp-1-A082UPW0Y05-8099656480130-b6ea13cc87bb45ad21563f4160ca61dc78ecd06a5a04585ad7e1fdf2ead564b3")

# Simple command response
@app.command("/hello")
def handle_hello_command(ack, respond):
    ack()  # Acknowledge the command
    respond("Hello! I'm running on a Raspberry Pi.")

# Event listener for messages
@app.event("message")
def handle_message_events(body, say):
    user = body['event']['user']
    text = body['event']['text']
    say(f"Hi <@{user}>, you said: {text}")

# Start the app
if __name__ == "__main__":
    app.start(port=3000)
