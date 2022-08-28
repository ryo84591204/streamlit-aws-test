import pandas as pd
import streamlit as st

st.markdown("# Main page 🎈")
st.sidebar.markdown("# Main page 🎈")

df = pd.DataFrame(
    data={'列1': [10, 20, 30, 40],
          '列2': [50, 60, 70, 80],
          '列3': ['a', 'b', 'c', 'd']}
)

st.write(df)
