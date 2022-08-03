class Entry
{
  String ent;

  Entry(JSONObject entry_list) {
    ent = entry_list.getString("entry_name");
  }
}

// reads from json file and compiles the data into a StringList, then returns it
StringList appendToList(String fileName) {
  StringList entries = new StringList();
  // load string list from json file
  JSONArray entry_array = loadJSONArray(fileName + ".json");
  for (int i = 0; i < entry_array.size(); i++) {
    JSONObject entryList = entry_array.getJSONObject(i);
    Entry new_entry = new Entry(entryList);
    entries.append(new_entry.ent);
  }

  return entries;
}

// requires input entry and an ArrayList to search through
boolean checkEntry(String inputEntry, ArrayList entryArray) {
  boolean isThere = false;

  for (int i = 0; i < entryArray.size(); i++) {
    if (inputEntry == entryArray.get(i)) {
      isThere = true;
    } else {
      isThere = false;
    }
  }

  // returns if the entry was found in the list or not
  return isThere;
}
