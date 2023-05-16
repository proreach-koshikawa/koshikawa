function appendData(formObject) {
    var url = 'https://docs.google.com/spreadsheets/d/1n1sPX8Dhasu_uNNHy8l7QaSPB_6y5MArJtAKnywo_2E/edit#gid=0';
    var ss = SpreadsheetApp.openByUrl(url);
    var ws = ss.getSheetByName('Sheet1');
    ws.appendRow([formObject.name, formObject.email]);
  }
  