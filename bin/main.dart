import 'package:note_app/models/note_model.dart';
import 'package:note_app/services/file_service.dart';
import 'package:note_app/services/io_service.dart';

void main() async {
  FileService fileService = FileService();
  await fileService.init();
  
  String title = "";
  String content = "";
  String exit = "";
  
  write("Iltimos note ni nomini kiriting: ");
  title = read();

  // await fileService.updateFile(title);

  Note note = await fileService.readFile(title);
  print(note);

  // String path = await fileService.createFile(title);
  // writeln("Note ni yozishingiz mumkin(Yozib tugatganingizda 'Save' so'zini yozsangiz note saqlab qo'yiladi)");
  // while(exit != "Save") {
  //   exit = read();
  //   if(exit == "Save") {
  //     break;
  //   }
  //   content += (exit + "\n");
  // }
  //
  // Note note = Note(title: title, content: content);
  //
  // await fileService.writeFile(note, path).then((value) => print("Note muvofaqiyatli saqlandi"));
}
