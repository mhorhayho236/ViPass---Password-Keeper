name: Greetings

on: [pull_request, issues]

jobs:
  greeting:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/LucyShuga-bisugasunday@gmail.com
     
        repo-token: ${{ secrets.GITHUB_TOKEN }}
        issue-message: 'Message that will be displayed on users'' first issue'
        pr-message: 'Message that will be displayed on users'' first pr'
