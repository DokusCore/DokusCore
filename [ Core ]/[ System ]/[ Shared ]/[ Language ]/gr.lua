Lang['gr'] = {

  ["System"] = {
    ["Yes"] = { Gender = false, Time = false, MSG = "Yes" },
    ["No"] = { Gender = false, Time = false, MSG = "No" },
    ["Error"] = { Gender = false, Time = false, MSG = "ERROR" },
    ["System"] = { Gender = false, Time = false, MSG = "System" },
    ["Success"] = { Gender = false, Time = false, MSG = "Success" },
    ["BLCheck"] = { Gender = false, Time = false, MSG = "Checking Blacklist" },
    ["WLCheck"] = { Gender = false, Time = false, MSG = "Checking Whitelist" },
    ["SteamCheck"] = { Gender = false, Time = false, MSG = "Checking Steam Identification" },
    ["SteamConFail"] = { Gender = false, Time = false, MSG = "Δεν μπορούμε να συνδεθούμε στο Steam API, βεβαιωθείτε ότι είχατε ανοιχτό το Steam πριν ανοίξετε το RedM!" },
    ["UserBanned"] = { Gender = false, Time = false, MSG = "Έχετε αποκλειστεί από αυτόν τον διακομιστή." },
    ["InfoDiscord"] = { Gender = false, Time = false, MSG = "Για περισσότερες πληροφορίες επισκεφθείτε το Discord ".._DiscordInvite.."" },
    ["NoBanReason"] = { Gender = false, Time = false, MSG = "No Reason Supplied" },
    ["WLPending"] = { Gender = false, Time = false, MSG = "Το αίτημα για τη λίστα επιτρεπόμενων είναι ακόμα σε εκκρεμότητα..." },
    ["WLDenied"] = { Gender = false, Time = false, MSG = "Το αίτημά σας στη λίστα επιτρεπόμενων απορρίφθηκε με αιτιολογία:" },
    ["WLMade1"] = { Gender = false, Time = false, MSG = "Για πρόσβαση σε αυτόν τον διακομιστή πρέπει να μπείτε στη λίστα επιτρεπόμενων." },
    ["WLMade2"] = { Gender = false, Time = false, MSG = "Το αίτημα της λίστας επιτρεπόμενων έχει γίνει αυτόματα και είναι τώρα σε εκκρεμότητα." },
    ["NoCharFound"] = { Gender = false, Time = false, MSG = "Δεν είναι δυνατή η εκτέλεση αυτής της ενέργειας, δεν βρέθηκε χαρακτήρας!" },
    ["Language"] = { Gender = false, Time = false, MSG = "Language" },
    ["LangNotEnter"] = { Gender = false, Time = false, MSG = "Η παράμετρος γλώσσας ήταν κενή!" },
    ["LanguageSetTo"] = { Gender = false, Time = false, MSG = "Client language is set to " },
    ["LangNoSupport"] = { Gender = false, Time = 5.0, MSG = "Αυτή η γλώσσα δεν υποστηρίζεται!" },
    ["WelcomeTo"] = { Gender = false, Time = false, MSG = "Welcome to:" },
    ["InProgress"] = { Gender = false, Time = false, MSG = "In Progress" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Open Menu" },
    ["InDevelopment"] = { Gender = false, Time = 5.0, MSG = "Αυτή η δυνατότητα είναι υπό ανάπτυξη!" },

    -- Πόλεις
    ["Guarma"] = { Gender = false, Time = false, MSG = "Guarma" },
    ["Sisika"] = { Gender = false, Time = false, MSG = "Sisika Jail" },
    ["SaintDenis"] = { Gender = false, Time = false, MSG = "Saint Denis" },
  },

  ["Banking"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Banking" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Bankier Worker" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "Είμαι απασχολημένος αυτήν τη στιγμή με έναν άλλο πολίτη, μια στιγμή παρακαλώ!" },
    ["NoAccount"] = { Gender = false, Time = 3.5, MSG = "Λυπάμαι, αλλά δεν έχουμε καταχωρημένο τραπεζικό λογαριασμό στα αρχεία καταγραφής μας. Πρέπει πρώτα να ανοίξετε έναν τραπεζικό λογαριασμό για να μπορέσετε να χρησιμοποιήσετε έναν!" },
    ["UseBankKey"] = { Gender = false, Time = 3.5, MSG = "Use The Bank" },
    ["AlAccount"] = { Gender = false, Time = 3.5, MSG = "Έχετε ήδη τραπεζικό λογαριασμό σε αυτήν την τράπεζα!" },
    ["AcCreation"] = { Gender = false, Time = 3.5, MSG = "Έχετε πληρώσει το τέλος του λογαριασμού σας, ο λογαριασμός δημιουργείται!" },
    ["AcCreated"] = { Gender = false, Time = 3.5, MSG = "Ο τραπεζικός λογαριασμός σας έχει γίνει! Μπορείτε τώρα να ανοίξετε τον τραπεζικό σας λογαριασμό." },
    ["NoDepMoney"] = { Gender = false, Time = 3.5, MSG = "Δεν έχετε αρκετά χρήματα για να κάνετε αυτήν την κατάθεση!" },
    ["NoDepGold"] = { Gender = false, Time = 3.5, MSG = "Δεν έχετε αρκετό χρυσό για να κάνετε αυτήν την κατάθεση!" },
    ["NoWitMoney"] = { Gender = false, Time = 3.5, MSG = "Δεν έχετε αρκετά χρήματα για να κάνετε αυτήν την ανάληψη!" },
    ["NoWitGold"] = { Gender = false, Time = 3.5, MSG = "Δεν έχετε αρκετό χρυσό για να κάνετε αυτή την ανάληψη!" },
    ["DepMinMoney"] = { Gender = false, Time = 3.5, MSG = "Το ποσό της κατάθεσης πρέπει να είναι μεγαλύτερο από $0,01 cent!" },
    ["DepMinGold"] = { Gender = false, Time = 3.5, MSG = "Το ποσό της κατάθεσης πρέπει να είναι μεγαλύτερο από 0,01 χρυσό!" },
    ["WitMinMoney"] = { Gender = false, Time = 3.5, MSG = "Το ποσό της κατάθεσης πρέπει να είναι μεγαλύτερο από $0,01 cent!" },
    ["WitMinGold"] = { Gender = false, Time = 3.5, MSG = "Το ποσό της κατάθεσης πρέπει να είναι μεγαλύτερο από 0,01 χρυσό!" },
    ["ToFast"] = { Gender = false, Time = 3.5, MSG = "Λυπάμαι, αλλά μπορώ να κάνω μόνο 1 συναλλαγή τη φορά. Μια στιγμή παρακαλώ!" },
    ["DepDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Έχετε κάνει μια κατάθεση $" },
    ["DepDoneGold"] = { Gender = false, Time = 3.5, MSG = "Έχετε κάνει κατάθεση " },
    ["WitDoneMoney"] = { Gender = false, Time = 3.5, MSG = "Έχετε κάνει ανάληψη $" },
    ["WitDoneGold"] = { Gender = false, Time = 3.5, MSG = "Έχετε κάνει ανάληψη " },

    ["OnEnter"] = {
      { Gender = false, Time = false, MSG = "Καλώς ήρθατε στην τράπεζά μας, πώς μπορώ να είμαι χρήσιμος;" },
      { Gender = false, Time = false, MSG = "Καλώς ήρθατε, πώς μπορώ να σας βοηθήσω;" },
    },

    ["OnExit"] = {
      { Gender = false, Time = false, MSG = "Ευχαριστώ που περάσατε, να έχετε μια υπέροχη μέρα!" },
      { Gender = false, Time = false, MSG = "Ήμουν παρακαλώ να σας βοηθήσω σήμερα, μέχρι την επόμενη φορά!" },
      { Gender = false, Time = false, MSG = "Αν υπάρχει κάτι στο οποίο μπορώ ακόμα να σας βοηθήσω, απλώς ενημερώστε με!" },
    }
  },

  ["Characters"] = {
    ["NoCharSelected"] = { Gender = false, Time = 3.0, MSG = "Δεν έχει επιλεγεί χαρακτήρας!" },
  },

  ["Clothing"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Clothing Store" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Tailor" },
    ["NPCBusy"] = { Gender = false, Time = 3.5, MSG = "Αυτήν τη στιγμή είμαι απασχολημένος με έναν άλλο πελάτη, υπομονή για μια στιγμή. Θα είμαι μαζί σας το συντομότερο δυνατό!" },
    ["NeedToGo"] = { Gender = false, Time = 3.5, MSG = "Έχω περισσότερα να κάνω και περισσότερους πελάτες να ασχοληθώ, ενημερώστε με όταν χρειάζεστε περισσότερη βοήθεια" },
    ["DressingRoom"] = { Gender = false, Time = false, MSG = "Gorming Room" },
    ["Confirmation"] = { Gender = false, Time = false, MSG = "Confirmation" },
    ["ConfirmSwitch"] = { Gender = false, Time = 3.5, MSG = "Θέλετε να αλλάξετε ρούχα;" },
    ["Pay"] = { Gender = false, Time = false, MSG = "Pay" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Open Menu" },
    ["Outfits"] = { Gender = false, Time = false, MSG = "Outfits" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Καλώς ήρθατε, ελπίζω να μπείτε στο κατάστημά μου με καθαρά παπούτσια!" },
      { Gender = 'Male', Time = 3.5, MSG = "Yeee boy, καλώς ήλθατε στο κατάστημά μου κύριε, χαίρομαι που σας βλέπω!" },
      { Gender = 'Male', Time = 3.5, MSG = "Ω, κοιτάξτε, γεια σας. Πώς είναι η μέρα σας σήμερα κύριε;" },
      { Gender = 'Female', Time = 3.5, MSG = "Καλώς ήρθατε, ελπίζω να μπείτε στο κατάστημά μου με καθαρά παπούτσια!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ναι αγόρι μου, καλώς ήρθες στο κατάστημά μου!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ω, κοιτάξτε, γεια σας. Πώς είναι η μέρα σας σήμερα κυρία μου;" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Ευχαριστώ για την επίσκεψή σου! Ασφαλή ταξίδια φίλε μου!" },
      { Gender = 'Male', Time = 3.5, MSG = "Σας εύχομαι μια καλή μέρα, να απολαύσετε τη μέρα σας κύριε!" },
      { Gender = 'Male', Time = 3.5, MSG = "Απολαύστε τη μέρα σας κύριε, ευχαριστώ για την επίσκεψή σας." },
      { Gender = 'Male', Time = 3.5, MSG = "Καλά ταξίδια φίλε μου, ευχαριστώ για την επίσκεψή σου" },
      { Gender = 'Female', Time = 3.5, MSG = "Ευχαριστούμε για την επίσκεψή σας! Ασφαλή ταξίδια κυρία μου!" },
      { Gender = 'Female', Time = 3.5, MSG = "Σας εύχομαι μια καλή μέρα, να απολαύσετε τη μέρα σας κυρία!" },
      { Gender = 'Female', Time = 3.5, MSG = "Απολαύστε τη μέρα σας Κυρία, ευχαριστώ για την επίσκεψή σας." },
      { Gender = 'Female', Time = 3.5, MSG = "Καλά ταξίδια κυρία μου, ευχαριστώ για την επίσκεψή σας" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3, MSG = "Πώς μπορώ να σας βοηθήσω καλέ κύριε;" },
      { Gender = 'Female', Time = 3, MSG = "Πώς μπορώ να σε βοηθήσω κυρία μου;" }
    },

    ["EnterMenu"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Γιατί θα μπορέσω να σας βοηθήσω, κύριε. Περπατήστε στο πλάι του πάγκου και θα είμαι μαζί σας το συντομότερο δυνατό." },
      { Gender = 'Male', Time = 3.5, MSG = "Ahh, ναι, ρούχα. Κύριε, ήρθατε στο σωστό μέρος, παρακαλώ ακολουθήστε με." },
      { Gender = 'Female', Time = 3.5, MSG = "Όπως σας αρέσει κυρία μου, θα σας βοηθήσω με μεγάλη χαρά!" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Ahh, ναι, ρούχα. Κυρία, ήρθατε στο σωστό μέρος, ακολουθήστε με." },
    },

    ["Reactions"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Thatsage σας, κύριε" },
      { Gender = 'Male', Time = 5.0, MSG = "Ω, κοίτα αυτό, το να σε βλέπω έτσι με κάνει να ζηλεύω." },
      { Gender = 'Male', Time = 5.0, MSG = "Oh boy, δες το, είναι υπέροχο." },
      { Gender = 'Male', Time = 5.0, MSG = "Είναι ό,τι καλύτερο έχουμε στην πόλη, δεν βρίσκεις πουθενά αλλού καλύτερα!" },
      { Gender = 'Male', Time = 5.0, MSG = "So beautiful, so special, and I'm one's που μπορώ να το φτιάξω για σένα, αν θέλεις λόγω αιτίας." },
      { Gender = 'Male', Time = 5.0, MSG = "That fit you marvelous" },
      { Gender = 'Male', Time = 5.0, MSG = "Θεέ μου, καθώς φτιάχτηκε ειδικά για σένα!" },
      { Gender = 'Female', Time = 5.0, MSG = "Αυτό σας ταιριάζει κύριε" },
      { Gender = 'Female', Time = 5.0, MSG = "Ω, κοίτα αυτό, το να σε βλέπω έτσι με κάνει να ζηλεύω." },
      { Gender = 'Female', Time = 5.0, MSG = "Ω αγόρι, κοίτα αυτό, είναι υπέροχο." },
      { Gender = 'Female', Time = 5.0, MSG = "Είναι ό,τι καλύτερο έχουμε στην πόλη, δεν βρίσκεις πουθενά αλλού καλύτερα!" },
      { Gender = 'Female', Time = 5.0, MSG = "Τόσο όμορφο, τόσο ιδιαίτερο, και είμαι αυτός που μπορώ να το φτιάξω για σένα, αν θέλεις λόγω αιτίας." },
      { Gender = 'Female', Time = 5.0, MSG = "Αυτό που σου ταιριάζει υπέροχα" },
      { Gender = 'Female', Time = 5.0, MSG = "Θεέ μου, καθώς φτιάχτηκε ειδικά για σένα!" },
    }
  },

  ["Skins"] = {
    ['Male']      = { Gender = false, Time = false, MSG = "Αρσενικός" },
    ['Female']    = { Gender = false, Time = false, MSG = "Θηλυκός" },
    ['Select']    = { Gender = false, Time = false, MSG = "Επιλέγω" },
    ["SetGender"] = { Gender = false, Time = false, MSG = "Επιλέξτε Φύλο" },
    ["ErrAge"]    = { Gender = false, Time = 3.0,   MSG = "Δεν έχετε ορίσει την ηλικία των χαρακτήρων σας!" },
    ["ErrName"]   = { Gender = false, Time = 3.0,   MSG = "Δεν έχετε ορίσει το όνομα των χαρακτήρων σας!" },
    ["ErrNatio"]  = { Gender = false, Time = 3.0,   MSG = "Δεν έχετε ορίσει την εθνικότητα των χαρακτήρων σας!" },
    ["ErrTorso"]  = { Gender = false, Time = 3.0,   MSG = "Δεν έχετε ορίσει τον τύπο του κορμού των χαρακτήρων σας!" },
    ["ErrLegs"]   = { Gender = false, Time = 3.0,   MSG = "Δεν έχετε ορίσει τον τύπο των ποδιών των χαρακτήρων σας!" },
    ["ErrHead"]   = { Gender = false, Time = 3.0,   MSG = "Δεν έχετε ορίσει τον τύπο της κεφαλής των χαρακτήρων σας!" },
    ["ErrEyes"]   = { Gender = false, Time = 3.0,   MSG = "Δεν έχετε ορίσει τον τύπο των ματιών των χαρακτήρων σας!" },
    ["ErrHair"]   = { Gender = false, Time = 3.0,   MSG = "Δεν έχετε ορίσει τον τύπο μαλλιών των χαρακτήρων σας!" },
  },

  ["Spawner"] = {
    ['Cutscene'] = { Gender = false, Time = false, MSG = "Cutscene" },
    ["DriverName"] = { Gender = false, Time = false, MSG = "StageCoach Driver" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Έχεις απενεργοποιήσει τη μουσική" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Ενεργοποιήσατε τη μουσική" },
    ["ErrStepOut"] = { Gender = false, Time = 5.0, MSG = "Δεν μπορείς να βγεις στη σκηνή." },
    ["MusicToggle"] = { Gender = false, Time = false, MSG = "Stop | Start Music" },
    ["StepOut"] = { Gender = false, Time = false, MSG = "Step Out" },
    ["Cinema"] = { Gender = false, Time = false, MSG = "Cinema" },

    ["Welcome"] = {
      { Gender = false, Time = 5.0, MSG = "Καλώς ήρθατε στη κομητεία μας, να απολαύσετε τη διαμονή σας!" },
      { Gender = false, Time = 5.0, MSG = "Σε λέω ότι είσαι έξυπνος, γιατί επιλέγεις για αυτήν την κομητεία! Χαχα, καλώς ήρθες φίλε μου!" },
    },

    ["Advice"] = {
      { Gender = false, Time = 5.0, MSG = "Θα σε φέρω σε έναν καλό Ράφτη που θα μπορούσε να σε βοηθήσει να αγοράσεις κάποια νέα ρούχα" },
      { Gender = false, Time = 5.0, MSG = "Μετά από τόσο μακρύ ταξίδι ένας καλός Ράφτης είναι αυτό που χρειάζεστε. Αφήστε με να κάνω την τιμή και να σας φέρω σε ένα." },
    },

    ["Tailor"] = {
      { Gender = false, Time = 5.0, MSG = "Υπάρχει ένας Ράφτης κοντά, θα σκεφτόμουν να πάρω κάποια νέα ρούχα." },
      { Gender = false, Time = 5.0, MSG = "Θα βρείτε έναν Ράφτη στη γωνία, θα σκεφτόμουν να πάρω μερικά νέα ρούχα." },
    },

    ["Goodbye"] = {
      { Gender = false, Time = 5.0, MSG = "Αντίο φίλε μου, χάρηκα που σε γνώρισα! Απολαύστε τη διαμονή σας!" },
      { Gender = false, Time = 5.0, MSG = "Ήταν υπέροχο που σε γνώρισα, μακάρι να χαρείς τη διαμονή σου!" },
      { Gender = false, Time = 5.0, MSG = "That is then $12,25... hah, αστειεύομαι, απόλαυσε τη διαμονή σου φίλε μου!" },
    },

    ["DriverTalk"] = {
      { Gender = false, Time = 5.0, MSG = "Είναι μια ωραία κομητεία στην οποία φτάσατε, υπάρχουν πολλά να κάνετε στην πόλη, μπορεί να σας αρέσει." },
      { Gender = false, Time = 7.0, MSG = "Δεν είναι αστείο πώς μπορεί να είναι ο καιρός μερικές φορές, μπορεί να αλλάζει σαν τρελός! Σοβαρά δεν θέλεις να σε ξεγελάσουν σε μια από αυτές τις καταιγίδες θα σου πω ." },
      { Gender = false, Time = 5.0, MSG = "Φαίνεται ότι ταξιδεύατε για αρκετό καιρό. Ελπίζω ότι το ταξίδι σας ήταν χωρίς προβλήματα." },
      { Gender = false, Time = 5.0, MSG = "Ain't it only me, or is very dissy our here." },
      { Gender = false, Time = 5.0, MSG = "Κοίτα τον καιρό, δεν είναι όμορφος" },
      { Gender = false, Time = 5.0, MSG = "Είμαστε σχεδόν στον προορισμό μας. Ελπίζω να απολαμβάνετε τη διαδρομή μέχρι στιγμής." },
    }
  },

  ["CoreMenu"] = {
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Open Menu" },
    ["Inventory"] = { Gender = false, Time = false, MSG = "Inventory" },
    ["AdminMenu"] = { Gender = false, Time = false, MSG = "Admin Menu" },
    ["Zoning"] = { Gender = false, Time = false, MSG = "Zoning" },
    ["AutoMove"] = { Gender = false, Time = false, MSG = "Start Auto Move" },
    ["StopMove"] = { Gender = false, Time = false, MSG = "Stop Auto Move" },
    ["Unequipt"] = { Gender = false, Time = false, MSG = "Unequipt Weapon" },
    ["Error"] = { Gender = false, Time = false, MSG = "Error" },
    ["System"] = { Gender = false, Time = false, MSG = "System" },
    ["Initialize"] = { Gender = false, Time = 3.0, MSG = "Setting Menu Initialized!" },
    ["Initialize2"] = { Gender = false, Time = 5.0, MSG = "Μπορείτε τώρα να ανοίξετε το μενού ρυθμίσεων με το αριστερό πλήκτρο alt!" },
    ["NoNextPage"] = { Gender = false, Time = 3.0, MSG = "Δεν υπάρχει επόμενη σελίδα αυτήν τη στιγμή" },
    ["NoBackPage"] = { Gender = false, Time = 3.0, MSG = "No back page at the moment" },
    ["CoordsSave"] = { Gender = false, Time = 5.0, MSG = "Έχετε αποθηκεύσει τις συντεταγμένες σας!" },
    ["ErrSkin"] = { Gender = false, Time = 5.0, MSG = "Δεν έχετε skin για φόρτωση! Δημιουργήστε πρώτα ένα skin!" },
    ["LogOut"] = { Gender = false, Time = 5.0, MSG = "Logging Out" },
    ["LogOutCoords"] = { Gender = false, Time = 5.0, MSG = "Saving your character's position" },
    ["MusicOn"] = { Gender = false, Time = 5.0, MSG = "Όλη η μουσική στο παιχνίδι έχει ενεργοποιηθεί!" },
    ["MusicOff"] = { Gender = false, Time = 5.0, MSG = "Όλη η μουσική στο παιχνίδι έχει απενεργοποιηθεί!" },
    ["MusicUnable"] = { Gender = false, Time = 5.0, MSG = "Έχετε απενεργοποιήσει τη μουσική στις ρυθμίσεις, δεν μπορείτε να παίξετε μουσική!" },
    ["VolSet"] = { Gender = false, Time = 5.0, MSG = "Volume set to %" },
    ["VolSet2"] = { Gender = false, Time = 5.0, MSG = "Η ένταση θα εφαρμοστεί στο επόμενο τραγούδι!" },
    ["CharDel"] = { Gender = false, Time = 10.0, MSG = "Character delete in progress" },
    ["DelDone"] = { Gender = false, Time = 5.0, MSG = "Όλες οι πληροφορίες χαρακτήρων έχουν καθαριστεί, σας επαναφέρουμε στο μενού επιλογής χαρακτήρων" },
  },

  ["FastTravel"] = {
    ["ZoneName"] = { Gender = false, Time = false, MSG = "Fast Travel" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Dokus Travel Agency" },

    ["GoodTravels"] = {
      { Gender = false, Time = 5.0, MSG = "Have a ευχάριστο ταξίδι, και ευχαριστώ για το ταξίδι Dokus Industries" },
      { Gender = false, Time = 5.0, MSG = "Ελπίζουμε ότι θα απολαύσετε το ταξίδι σας, ασφαλή ταξίδια" },
      { Gender = false, Time = 5.0, MSG = "Χαιρόμαστε που επιλέγετε την Dokus Industries για να ταξιδέψετε!" },
      { Gender = false, Time = 5.0, MSG = "Μπορείτε να μπείτε στο σκάφος στην αποβάθρα, ασφαλή ταξίδια" },
    }

  },

  ["GunStore"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Arms Dealer" },
    ["BlipName"] = { Gender = false, Time = false, MSG = "Gun Store" },
    ["NoMoney"] = { Gender = false, Time = 3.0, MSG = "Δεν έχεις αρκετά χρήματα!" },
    ["BoughtAmmo1"] = { Gender = false, Time = 3.0, MSG = "Έχετε αγοράσει " },
    ["BoughtAmmo2"] = { Gender = false, Time = 3.0, MSG = "Mmo!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Open Menu" },
    ['ErrNotWorking'] = { Gender = false, Time = 5.0, MSG = "Αυτό το προϊόν δεν λειτουργεί αυτήν τη στιγμή όπως αναμένεται και δεν πωλείται αυτήν τη στιγμή!" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Καλώς ήρθατε, ελπίζω να μπείτε στο κατάστημά μου με καθαρά παπούτσια!" },
      { Gender = 'Male', Time = 3.5, MSG = "Yeee boy, Welcome to my stores κύριε!" },
      { Gender = 'Male', Time = 3.5, MSG = "Ω, κοιτάξτε, γεια σας. Πώς είναι η μέρα σας σήμερα κύριε;" },
      { Gender = 'Female', Time = 3.5, MSG = "Καλώς ήρθατε, ελπίζω να μπείτε στο κατάστημά μου με καθαρά παπούτσια!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ναι αγόρι μου, καλώς ήρθες στο κατάστημά μου!" },
      { Gender = 'Female', Time = 3.5, MSG = "Ω, κοιτάξτε, γεια σας. Πώς είναι η μέρα σας σήμερα κυρία μου;" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Ευχαριστώ για την επίσκεψή σου! Ασφαλή ταξίδια φίλε μου!" },
      { Gender = 'Male', Time = 3.5, MSG = "Σας εύχομαι μια καλή μέρα, να απολαύσετε τη μέρα σας κύριε!" },
      { Gender = 'Male', Time = 3.5, MSG = "Απολαύστε τη μέρα σας κύριε, ευχαριστώ για την επίσκεψή σας." },
      { Gender = 'Male', Time = 3.5, MSG = "Καλά ταξίδια φίλε μου, ευχαριστώ για την επίσκεψή σου" },
      { Gender = 'Female', Time = 3.5, MSG = "Ευχαριστούμε για την επίσκεψή σας! Ασφαλή ταξίδια κυρία μου!" },
      { Gender = 'Female', Time = 3.5, MSG = "Σας εύχομαι μια καλή μέρα, να απολαύσετε τη μέρα σας κυρία!" },
      { Gender = 'Female', Time = 3.5, MSG = "Απολαύστε τη μέρα σας Κυρία, ευχαριστώ για την επίσκεψή σας." },
      { Gender = 'Female', Time = 3.5, MSG = "Καλά ταξίδια κυρία μου, ευχαριστώ για την επίσκεψή σας" },
    },

    ["NearNPC"] = {
      { Gender = 'Male', Time = 3.5, MSG = "Πώς μπορώ να σας βοηθήσω καλέ κύριε;" },
      { Gender = 'FeMale', Time = 3.5, MSG = "Πώς μπορώ να σε βοηθήσω κυρία μου;" },
    }
  },

  ["Inventory"] = {
    ["DropBox"] = { Gender = false, Time = false, MSG = "DropBox" },
    ["LootBox"] = { Gender = false, Time = false, MSG = "Loot Box" },
    ["OpenBox"] = { Gender = false, Time = false, MSG = "Press ~color_green~E~q~ to open" },
    ["NoSelectDrop"] = { Gender = false, Time = false, MSG = "Δεν έχετε επιλέξει κανένα αντικείμενο για πτώση στο έδαφος! Επιλέξτε πρώτα ένα αντικείμενο!" },
    ["NotEnough"] = { Gender = false, Time = false, MSG = "Δεν έχετε αρκετό από αυτό το είδος στο απόθεμά σας!" },
    ["NoAmount"] = { Gender = false, Time = false, MSG = "Δεν έχετε ορίσει ποσό στην παράμετρο ποσό. Δεν είναι δυνατή η απόρριψη του αντικειμένου σας!" },
    ["ToClose"] = { Gender = false, Time = 5.0, MSG = "Θα κλείσετε σε διαφορετικό DropBox. Πλησιάστε ή απομακρύνεστε!" },
  },

  ["Metabolism"] = {

    ["HungerTxt"] = {
      { Gender = false, Time = 5.0, MSG = "Πεινάω, χρειάζομαι κάτι να φάω" },
      { Gender = false, Time = 5.0, MSG = "Είμαι τόσο πεινασμένος, χρειάζομαι πραγματικά κάτι να φάω" },
      { Gender = false, Time = 5.0, MSG = "Nιώθω αναίσθητος, χρειάζομαι κάτι να φάω" },
      { Gender = false, Time = 5.0, MSG = "Ωχ πονάει το στομάχι μου, δεν έχω φάει ακόμα" },
    },

    ["ThirstTxt"] = {
      { Gender = false, Time = 5.0, MSG = "I'm τόσο διψασμένος, χρειάζομαι κάτι να πιω" },
      { Gender = false, Time = 5.0, MSG = "Το στόμα μου είναι ξηρό, χρειάζομαι λίγο νερό" },
      { Gender = false, Time = 5.0, MSG = "Uhg, αν δεν πιω σύντομα, μπορεί να λιποθυμήσω" },
      { Gender = false, Time = 5.0, MSG = "Ποτέ στη ζωή μου δεν ένιωσα τόσο διψασμένος" },
    }
  },

  ["Scavenger"] = {
    ["Name"] = { Gender = false, Time = false, MSG = "Scavenger" },
    ["Rewards"] = { Gender = false, Time = 3.0, MSG = "Έχετε μαζέψει" },
    ["AlreadyHarv"] = { Gender = false, Time = 3.0, MSG = "Αυτός ο θάμνος έχει ήδη συγκομιστεί" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Harvest" },
  },

  ["ScratchCards"] = {
    ["NPCName"] = { Gender = false, Time = false, MSG = "Bank Worker" },
    ["NoTickets"] = { Gender = false, Time = 5.0, MSG = "Δεν έχετε λαχεία στην κατοχή σας!" },
    ["WonCard"] = { Gender = false, Time = 5.0, MSG = "Κέρδισες $" },
    ["WonTotal"] = { Gender = false, Time = 5.0, MSG = "Έχετε κερδίσει συνολικά $" },
    ["PromptHarv"] = { Gender = false, Time = false, MSG = "Harvest" },
    ["BetterLuck"] = { Gender = false, Time = false, MSG = "Better luck next time" },
    ["NoWin"] = { Gender = false, Time = 5.0, MSG = "Δυστυχώς δεν έχετε κερδίσει τίποτα αυτή τη φορά" },
  },

  ["ScriptBundle"] = {
    ["MenuDance"] = { Gender = false, Time = false, MSG = "Dance" },
    ["MenuStop"] = { Gender = false, Time = false, MSG = "Stop" },
    ["MenuNext"] = { Gender = false, Time = false, MSG = "Next" },
    ["MenuBack"] = { Gender = false, Time = false, MSG = "Back" },
    ["ShowFear"] = { Gender = false, Time = false, MSG = "Show / Expres Fear" },
    ["StopTrumpet"] = { Gender = false, Time = 5.0, MSG = "Μπορείτε να σταματήσετε την αναπαραγωγή πατώντας Backspace - Spacebar ή X" },
    ["TrumpWarning"] = { Gender = false, Time = 5.0, MSG = "Εάν η τρομπέτα μείνει κολλημένη στο χέρι σας, φορτώστε ξανά το δέρμα σας μέσω του μενού για να το διορθώσετε" },
    ["ScenarioStop"] = { Gender = false, Time = 5.0, MSG = "Μπορείτε να σταματήσετε το σενάριο πληκτρολογώντας [ /scenario stop ] στη συνομιλία" },
    ["SetStatus"] = { Gender = false, Time = false, MSG = "Set your status!" },
  },

  ["Stables"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "Stable" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "Stable Attendant" },
    ["HorseNamed"] = { Gender = false, Time = 3.5, MSG = "Έχετε ονομάσει το άλογό σας: " },
    ["HorseBought"] = { Gender = false, Time = 5.0, MSG = "Το άλογό σας είναι τώρα έτοιμο! Ήταν ευχαρίστηση να κάνω δουλειές μαζί σας." },
    ["HorseStored"] = { Gender = false, Time = 5.0, MSG = "Το άλογό σας είναι αποθηκευμένο, θα το φροντίσουμε πολύ!" },
    ["NameHorse"] = { Gender = false, Time = false, MSG = "Name your horse" },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Δεν έχεις αρκετά χρήματα για να αγοράσεις αυτό το άλογο φοβάμαι!" },
    ["HorseReady"] = { Gender = false, Time = 5.0, MSG = "You're horse is έτοιμο στο στάβλο του!" },
    ["FetchHorse"] = { Gender = false, Time = 5.0, MSG = "Σίγουρα, μια στιγμή άφησέ με να πάρω το άλογό σου!" },
    ["HorseFetched"] = { Gender = false, Time = 5.0, MSG = "Ορίστε, κύριε, όσο υγιής ήταν ποτέ!" },
    ["OpenMenu"] = { Gender = false, Time = false, MSG = "Open Menu" },
    ["StoreHorse"] = { Gender = false, Time = false, MSG = "Store Horse" },
    ["NoHorseName"] = { Gender = false, Time = 5.0, MSG = "Συγγνώμη, αλλά πρέπει να δώσετε ένα όνομα στο άλογό σας" },

    ["EnterStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Καλώς ήρθατε, ελπίζω να μπείτε στο κατάστημά μου με καθαρά παπούτσια!" },
      { Gender = 'Male', Time = 5.0, MSG = "Yeee boy, καλώς ήλθατε στο κατάστημά μου, έχω μερικά άλογα για εσάς κύριε!" },
      { Gender = 'Male', Time = 5.0, MSG = "Ω, κοιτάξτε, γεια σας. Πώς είναι η μέρα σας σήμερα κύριε;" },
      { Gender = 'Female', Time = 5.0, MSG = "Καλώς ήρθατε, ελπίζω να μπείτε στο κατάστημά μου με καθαρά παπούτσια!" },
      { Gender = 'Female', Time = 5.0, MSG = "Ναι αγόρι μου, καλώς ήρθες στο κατάστημά μου!. Ω, συγγνώμη κυρία μου, είχα τελειώσει." },
      { Gender = 'Female', Time = 5.0, MSG = "Ω, κοιτάξτε, γεια σας. Πώς είναι η μέρα σας σήμερα κυρία μου;" },
    },

    ["ExitStore"] = {
      { Gender = 'Male', Time = 5.0, MSG = "Ευχαριστούμε για την επίσκεψή σας! Ασφαλή ταξίδια φίλε μου!" },
      { Gender = 'Male', Time = 5.0, MSG = "Σας εύχομαι μια καλή μέρα, να απολαύσετε τη μέρα σας κύριε!" },
      { Gender = 'Male', Time = 5.0, MSG = "Απολαύστε τη μέρα σας κύριε, ευχαριστώ για την επίσκεψή σας." },
      { Gender = 'Male', Time = 5.0, MSG = "Καλά ταξίδια φίλε μου, ευχαριστώ για την επίσκεψή σου" },
      { Gender = 'Female', Time = 5.0, MSG = "Ευχαριστούμε για την επίσκεψή σας! Ασφαλή ταξίδια κυρία μου!" },
      { Gender = 'Female', Time = 5.0, MSG = "Σας εύχομαι μια καλή μέρα, να απολαύσετε τη μέρα σας κυρία!" },
      { Gender = 'Female', Time = 5.0, MSG = "Απολαύστε τη μέρα σας Κυρία, ευχαριστώ για την επίσκεψή σας." },
      { Gender = 'Female', Time = 5.0, MSG = "Καλά ταξίδια κυρία μου, ευχαριστώ για την επίσκεψή σας" },
    }
  },

  ["Stores"] = {
    ["BlipName"] = { Gender = false, Time = false, MSG = "General Store" },
    ["NPCName"] = { Gender = false, Time = false, MSG = "General Store Worker" },
    ["MenuBuy"] = { Gender = false, Time = false, MSG = "General Store (Buy)" },
    ["MenuSell"] = { Gender = false, Time = false, MSG = "Inventory (Sell)" },
    ["ButtonBuy"] = { Gender = false, Time = false, MSG = "Buy" },
    ["ButtonSell"] = { Gender = false, Time = false, MSG = "Sell" },
    ["ButtonMan"] = { Gender = false, Time = false, MSG = "Manage" },
    ["NotInInvent"] = { Gender = false, Time = 3.5, MSG = "Δεν έχετε τόσα πολλά στο απόθεμά σας!" },
    ["Bought"] = { Gender = false, Time = 3.5, MSG = "Έχετε αγοράσει " },
    ["Sold"] = { Gender = false, Time = 3.5, MSG = "Έχετε πουλήσει " },
    ["NoMoney"] = { Gender = false, Time = 3.5, MSG = "Δεν έχετε αρκετά χρήματα για να αγοράσετε αυτό / αυτό το ποσό αντικειμένων!" },
    ["NoItem"] = { Gender = false, Time = false, MSG = "Δεν έχετε επιλέξει ακόμα ένα αντικείμενο!" },

    ["EnterStore"] = {
      { Gender = false, Time = 5.0, MSG = "Καλώς ήρθατε, ελπίζω να μπείτε στο κατάστημά μου με καθαρά παπούτσια!" },
      { Gender = false, Time = 5.0, MSG = "Hey a customer, this is F**** awesome!" },
      { Gender = false, Time = 5.0, MSG = "Oh, look at that, halo there." },
    },

    ["ExitStore"] = {
      { Gender = false, Time = 5.0, MSG = "Ευχαριστούμε για την επίσκεψή σας! Ασφαλή ταξίδια!" },
      { Gender = false, Time = 5.0, MSG = "Σας εύχομαι μια καλή μέρα, να απολαύσετε!" },
      { Gender = false, Time = 5.0, MSG = "Ejoy your day, ευχαριστώ για την επίσκεψή σας." },
      { Gender = false, Time = 5.0, MSG = "Καλά ταξίδια φίλε μου, ευχαριστώ για την επίσκεψή σου" },
    },

    ["MenuBuy"] = {
      { Gender = false, Time = 2.5, MSG = "How can I help you?" },
      { Gender = false, Time = 2.5, MSG = "Α, θέλετε να αγοράσετε κάτι ε;" },
      { Gender = false, Time = 2.5, MSG = "Είναι κάτι ιδιαίτερο που ψάχνεις;" },
    },

    ["MenuSell"] = {
      { Gender = false, Time = 2.5, MSG = "How can I help you?" },
      { Gender = false, Time = 2.5, MSG = "I'm gonna pop some tags, get only είκοσι δολάρια στην τσέπη μου!" },
      { Gender = false, Time = 2.5, MSG = "Α, θέλετε να πουλήσετε κάτι ε;" },
      { Gender = false, Time = 2.5, MSG = "Παίρνω τα πάντα από ψάρι σε ψωμί, από ψωμί στον καφέ. Μπορείτε να το πείτε!" },
    },

    ["MenuExit"] = {
      { Gender = false, Time = 5.0, MSG = "Ήταν ευχάριστο να συνεργαστώ μαζί σας!" },
      { Gender = false, Time = 5.0, MSG = "Χαίρομαι που μπορούσα να είμαι στην υπηρεσία σας!" },
      { Gender = false, Time = 5.0, MSG = "Είμαι χαρούμενος που μπόρεσα να σας βοηθήσω" },
    },
  },

  ["UsableItems"] = {
    ["Interactable"] = { Gender = false, Time = false, MSG = "Interactable" }
  },


















    -- NEEDS TRANSLATION
    ["WorldEdits"] = {
      ["GuarmaFishBar"] = { Gender = false, Time = false, MSG = "Guarma Fishers Bar" },
      ["GuarmaHideout"] = { Gender = false, Time = false, MSG = "Guarma Hideout" },
      ["GuarmaArena"]   = { Gender = false, Time = false, MSG = "Gladiator Arena" },
      ["MexicoBridge1"] = { Gender = false, Time = false, MSG = "Mexico High Bridge" },
      ["MexicoBridge2"] = { Gender = false, Time = false, MSG = "Victoria Long Bridge"},
      ["MexicoBridge3"] = { Gender = false, Time = false, MSG = "Mexico Low Bridge" },
      ["HangingBridge"] = { Gender = false, Time = false, MSG = "The Hanging Bridge" },
      ["NakotaNatCamp"] = { Gender = false, Time = false, MSG = "Nakota Native Camp" },
      ["ApacheNatCamp"] = { Gender = false, Time = false, MSG = "Apache Native Camp" },
      ["LakotaNatCamp"] = { Gender = false, Time = false, MSG = "Lakota Native Camp" },
      ["ArthurGraveSt"] = { Gender = false, Time = false, MSG = "Arthur's Gravestone" },
    },






















}
