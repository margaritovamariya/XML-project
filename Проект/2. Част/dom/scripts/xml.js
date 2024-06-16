function createXMLDocument() {
    //library beautyfly
    let documentImplementation = document.implementation;
    let doc = documentImplementation.createDocument(null, null);

    documentImplementation.createHTMLDocument();

    //gym
    let gym = doc.createElement("gym");
    
    //hall
    let hall = doc.createElement("hall");
    hall.setAttribute("open", "да");
    hall.setAttribute("group_training_allowed", "да");

    //id hall
    let idHall = doc.createElement("id");
    let idHallNode = doc.createTextNode("1");
    let hallName = doc.createElement("name");
    let hallNameNode = doc.createTextNode("Главна зала");
    let hallNote = doc.createElement("note");
    let hallNoteNode = doc.createTextNode("Просторна зала с естествена светлина");

    let male_allowed = doc.createElement("male_allowed");
    let male_allowed_node = doc.createTextNode("да");
    let female_allowed = doc.createElement("female_allowed");
    let female_allowed_node = doc.createTextNode("да");
    let has_wc = doc.createElement("has_wc");
    let has_wc_node = doc.createTextNode("да");
    let has_ac = doc.createElement("has_ac");
    let has_ac_node = doc.createTextNode("да");
    let number_of_equipments = doc.createElement("number_of_equipments");
    let number_of_equipments_node = doc.createTextNode("10");

    idHall.appendChild(idHallNode);
    hallName.appendChild(hallNameNode);
    hallNote.appendChild(hallNoteNode);
    male_allowed.appendChild(male_allowed_node);
    female_allowed.appendChild(female_allowed_node);
    has_wc.appendChild(has_wc_node);
    has_ac.appendChild(has_ac_node);
    number_of_equipments.appendChild(number_of_equipments_node);

    let equipment = doc.createElement("equipment");
    equipment.setAttribute("type", "тежести"); 

    let equipmentName = doc.createElement("name");
    let equipmentNameNode = doc.createTextNode("Дъмбели");
    let min_kg = doc.createElement("min_kg");
    let min_kg_node = doc.createTextNode("5");
    let max_kg = doc.createElement("max_kg");
    let max_kg_node = doc.createTextNode("50");
    let current_kg = doc.createElement("current_kg");
    let current_kg_node = doc.createTextNode("10");

    equipmentName.appendChild(equipmentNameNode);
    min_kg.appendChild(min_kg_node);
    max_kg.appendChild(max_kg_node);
    current_kg.appendChild(current_kg_node);

    equipment.appendChild(equipmentName);
    equipment.appendChild(min_kg);
    equipment.appendChild(max_kg);
    equipment.appendChild(current_kg);

    let training = doc.createElement("training");
    training.setAttribute("type", "цяло_тяло"); 

    let length = doc.createElement("length");
    let lengthNode = doc.createTextNode("60");
    let is_group = doc.createElement("is_group");
    let is_group_node = doc.createTextNode("не");
    let calories_burnt = doc.createElement("calories_burnt");
    let calories_burnt_node = doc.createTextNode("300");
    let pace = doc.createElement("pace");
    let paceNode = doc.createTextNode("средно");
    let number_of_breaks = doc.createElement("number_of_breaks");
    let number_of_breaks_node = doc.createTextNode("2");
    let break_length = doc.createElement("break_length");
    let break_length_node = doc.createTextNode("5");

    length.appendChild(lengthNode);
    is_group.appendChild(is_group_node);
    calories_burnt.appendChild(calories_burnt_node);
    pace.appendChild(paceNode);
    number_of_breaks.appendChild(number_of_breaks_node);
    break_length.appendChild(break_length_node);

    training.appendChild(length);
    training.appendChild(is_group);
    training.appendChild(calories_burnt);
    training.appendChild(pace);
    training.appendChild(number_of_breaks);
    training.appendChild(break_length);

    hall.appendChild(idHall);
    hall.appendChild(hallName);
    hall.appendChild(hallNote);
    hall.appendChild(male_allowed);
    hall.appendChild(female_allowed);
    hall.appendChild(has_wc);
    hall.appendChild(has_ac);
    hall.appendChild(number_of_equipments);
    hall.appendChild(equipment);
    hall.appendChild(training);
    
    gym.appendChild(hall);
    doc.appendChild(gym);

    return doc;
}