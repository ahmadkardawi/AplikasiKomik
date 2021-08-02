import 'package:flutter/material.dart';

class FormSample extends StatefulWidget {
  static const String routeName = '/form';
  @override
  _FormSampleState createState() => _FormSampleState();
}

class _FormSampleState extends State<FormSample> {
  //KeyForm
  final _formKey = GlobalKey<FormState>();
  TextEditingController _namaLengkap = TextEditingController();
  TextEditingController _passWord = TextEditingController();
  bool nilaiCheck = false;
  bool nilaiSwitch = true;
  double nilaiSlider = 1;

  FocusNode focusNode;
  final GlobalKey<ScaffoldState> scafolldKey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    focusNode = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scafolldKey,
      appBar: new AppBar(
        title: Text("Ahmad Kardawi"),
      ),
      body: SingleChildScrollView(
        child: Container(
          //Form
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _namaLengkap,
                    autofocus: true,
                    focusNode: focusNode,
                    keyboardType:
                        TextInputType.visiblePassword, //Jenis Keyboar Inputan
                    decoration: InputDecoration(
                      labelText: "Masukkan Nama",
                      icon: Icon(Icons.person),
                    ),

                    //Validator
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Nama Tidak Boleh Kosong";
                      }
                      return null;
                    },
                  ),
                ),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: _passWord,
                    obscureText: true, //HiddenText
                    decoration: InputDecoration(
                        hintText: "Passworld",
                        labelText: "Passworld",
                        icon: Icon(Icons.person),
                        suffixIcon: Icon(Icons.visibility)),
                    validator: (value) {
                      if (value.isEmpty) {
                        return "Password Tidak Boleh Kosong";
                      }
                      return null;
                    },
                  ),
                ),

                CheckboxListTile(
                  title: Text('Belajar Dasar Flutter'),
                  subtitle: Text('Dart, widget, http'),
                  value: nilaiCheck,
                  activeColor: Colors.deepPurpleAccent,
                  onChanged: (value) {
                    setState(() {
                      nilaiCheck = value;
                    });
                  },
                ),

                //Switch
                SwitchListTile(
                  title: Text('Backend Programming'),
                  subtitle: Text('Dart, Nodejs, PHP, Java, dll'),
                  value: nilaiSwitch,
                  activeTrackColor: Colors.pink[100],
                  activeColor: Colors.red,
                  onChanged: (value) {
                    setState(() {
                      nilaiSwitch = value;
                    });
                  },
                ),

                //Slider
                Slider(
                  value: nilaiSlider,
                  min: 0,
                  focusNode: focusNode,
                  max: 100,
                  onChanged: (value) {
                    setState(() {
                      nilaiSlider = value;
                    });
                  },
                ),

                //Tombol Validasi
                RaisedButton(
                  child: Text("Simpan"),
                  onPressed: () {
                    // _showAlertDialog();
                    // _snackBar(context);
                    // _showSimpleDialog(context);
                    //FungsiValidasi
                    if (_formKey.currentState.validate()) {
                      //datanya
                      var nama = _namaLengkap.text;
                      var pass = _passWord.text;

                      print(nama + " - " + pass);
                      print("Nilai Check = $nilaiCheck");
                      print("Nilai Switch = $nilaiSwitch");
                      print("Nilai Slider = ${nilaiSlider.toString()}");
                    }
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
