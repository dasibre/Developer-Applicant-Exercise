module Template

  def template(source_template, req_id)
    code_key_substitution = source_template.gsub!(/%CODE%/, req_id)
    alternate_code = required_id_formatter(req_id).slice(0..-3).insert(5,'-')
    alt_key_substitition = code_key_substitution.gsub(/%ALTCODE%/, alternate_code)
  end
  #Comments code smell Substitute for %CODE%/# Substitute for %ALTCODE%
  #Duplicated Code smell 7 different String.new calls
  #Added new method to format required ID to 10 digits, to ensure code does not break and output format will always be 56789-012
  #Made code more DRY
  def required_id_formatter(req_id)
    req_id.length > 10 ? req_id.slice(0..9-req_id.length) : req_id.ljust(10,'0')
  end
end
