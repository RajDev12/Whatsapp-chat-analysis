# whatsapp-chat-analysis
A streamlit app to analyze your whatsapp chat
<p>https://whatsapp-chat-analysis-rajdev12.streamlit.app/</p>

## Description
WhatsApp Chat Analysis is a predictive analysis project aimed at extracting insights from WhatsApp chat data. The project preprocesses the chat data, analyzes various statistics, and visualizes the findings to gain valuable insights into the chat activity.

WhatsApp has become a ubiquitous platform for communication, with millions of users exchanging messages, images, and other media on a daily basis. Analyzing WhatsApp chat data can provide valuable insights into communication patterns, user behavior, and trends over time. This project aims to leverage data science techniques to analyze WhatsApp chat data and uncover interesting insights.

## Motivation
The motivation behind this project stems from the increasing importance of data analysis in understanding human communication patterns and behavior. WhatsApp is one of the most widely used messaging platforms globally, making its chat data a valuable source of information for analysis. By analyzing WhatsApp chat data, we can gain insights into various aspects of communication, such as frequency of messages, popular words and phrases, emoji usage, and more.

Understanding communication patterns can have various applications, including:
- Improving user experience by identifying popular topics and interests.
- Analyzing group dynamics and interactions.
- Identifying trends and patterns over time.
- Extracting sentiment analysis to understand the mood and tone of conversations.  

## Libraries and Techniques Used
- **Python:** Used for scripting and data analysis.
- **Regular Expressions (Regex):** Utilized for pattern matching and data extraction.
- **Pandas:** Employed for data manipulation and analysis, including DataFrame operations.
- **WordCloud:** Utilized for generating word cloud visualizations based on chat messages.
- **Emoji:** Used for extracting and analyzing emojis from the chat data.
- **Streamlit:** Deployed the project as a web application using Streamlit for interactive visualization and exploration.
- **GitHub:** Hosted the project repository on GitHub for version control and collaboration.

## Functions Used
- **fetch_stats(selected_user, df):**
  - Fetches statistics about the selected user or overall chat.
  - Returns the number of messages, total words, number of media messages, and number of links shared.

- **most_busy_users(df):**
  - Identifies the most active users in the chat.
  - Returns the count of messages sent by each user and their percentage contribution to the total messages.

- **create_wordcloud(selected_user, df):**
  - Generates a word cloud visualization based on the messages sent by the selected user or overall chat.
  - Removes stop words and media messages before creating the word cloud.
  - Returns the WordCloud object.

- **most_common_words(selected_user, df):**
  - Finds the most common words used by the selected user or overall chat.
  - Removes stop words and media messages before counting.
  - Returns a DataFrame containing the most common words and their frequencies.

- **emoji_helper(selected_user, df):**
  - Extracts and counts emojis used by the selected user or overall chat.
  - Returns a DataFrame containing the emojis and their frequencies.

- **monthly_timeline(selected_user, df):**
  - Creates a timeline of message counts per month for the selected user or overall chat.
  - Returns a DataFrame with columns for year, month number, month name, and message count.

- **daily_timeline(selected_user, df):**
  - Generates a timeline of message counts per day for the selected user or overall chat.
  - Returns a DataFrame with columns for date and message count.

- **week_activity_map(selected_user, df):**
  - Creates a map of message activity by day of the week for the selected user or overall chat.
  - Returns a Series with the count of messages for each day.

- **month_activity_map(selected_user, df):**
  - Generates a map of message activity by month for the selected user or overall chat.
  - Returns a Series with the count of messages for each month.

- **activity_heatmap(selected_user, df):**
  - Creates a heatmap of message activity by day and hour for the selected user or overall chat.
  - Returns a DataFrame with days of the week as rows, time periods as columns, and message counts as values.

## Deployment
The WhatsApp Chat Analysis project is deployed as a web application using Streamlit. To deploy the project:

1. Clone the GitHub repository to your local machine.
2. Install the required Python dependencies listed in the `requirements.txt` file using pip.
3. Run the Streamlit web application using the command `streamlit run app.py`.
4. Access the deployed application through the provided URL.

The project is continuously updated and maintained on GitHub for further development and improvements.

## Future Enhancements
- Integration with other messaging platforms for broader analysis.
- Sentiment analysis to understand the mood and sentiment of conversations.
- Advanced visualizations and interactive dashboards for deeper insights.
- Natural Language Processing (NLP) techniques for text analysis and classification.

## Contributors
- [Raju Devnath] (https://github.com](https://github.com/RajDev12)
