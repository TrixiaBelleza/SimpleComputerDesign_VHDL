LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use STD.textio.all; 

ENTITY read_file IS
END read_file;

ARCHITECTURE beha OF read_file IS 
    
    constant c_WIDTH : natural := 4;

BEGIN
   --Read process
    process 
      file file_pointer : text;
      --variable line_content : string(1 to 9);
      variable operand : string(4 downto 1);
      variable space : character;
      variable reg1 : string(2 downto 1);
      variable space1 : character;
      variable reg2 : string(2 downto 1);
      variable space2 : character;
      variable reg3 : string(2 downto 1);
      variable line_num : line;
      variable a : integer;

    
    begin
        --Open the file read.txt from the specified location for reading(READ_MODE).
      file_open(file_pointer,"1.txt",READ_MODE);    
     
     while not endfile(file_pointer) loop --till the end of file is reached continue.
        readline (file_pointer,line_num);  --Read the whole line from the file
            --Read the contents of the line from  the file into a variable.
        READ (line_num,operand); 
        READ (line_num,space); 
        READ (line_num,reg1); 
        READ (line_num,space1); 
        READ (line_num,reg2); 
        if operand = "LOAD" then 
            report operand;
            report reg1;
            report reg2;
        else  
          READ (line_num,space2); 
          READ (line_num,reg3); 
            report operand;
            report reg1;
            report reg2;
            report reg3;
        end if;

      end loop;
      file_close(file_pointer);  --after reading all the lines close the file.  
        wait;
    end process;
end beha;