import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

final mPhoneNumber = MaskTextInputFormatter(mask: "## ### ## ##", filter: {"#": RegExp(r'[0-9]')});

final mCardPan = MaskTextInputFormatter(mask: "#### #### #### ####", filter: {"#": RegExp(r'[0-9]')});

final mCardExpiry = MaskTextInputFormatter(mask: "##/##", filter: {"#": RegExp(r'[0-9]')});

final mDate = MaskTextInputFormatter(mask: "*#.&#.%###", filter: {"*": RegExp(r'[0-1]'), "&": RegExp(r'[0-3]'),"%": RegExp(r'[1-2]'), "#": RegExp(r'[0-9]')});
