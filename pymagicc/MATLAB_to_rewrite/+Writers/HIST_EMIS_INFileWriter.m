classdef HIST_EMIS_INFileWriter < object_oriented_simcap.Writers.EmisFileWriter
    methods (Access = protected)
        function file_header_formatted = get_file_header(self)
            file_header = [...
                '.__  __          _____ _____ _____ _____ ______   ______ __  __ _____  _____  _____ _   _' self.newline_char...
                '|  \/  |   /\   / ____|_   _/ ____/ ____|____  | |  ____|  \/  |_   _|/ ____||_   _| \ | |' self.newline_char...
                '| \  / |  /  \ | |  __  | || |   | |        / /  | |__  | \  / | | | | (___    | | |  \| |' self.newline_char...
                '| |\/| | / /\ \| | |_ | | || |   | |       / /   |  __| | |\/| | | |  \___ \   | | | . ` |' self.newline_char...
                '| |  | |/ ____ \ |__| |_| || |___| |____  / /    | |____| |  | |_| |_ ____) | _| |_| |\  |' self.newline_char...
                '|_|  |_/_/    \_\_____|_____\_____\_____|/_/     |______|_|  |_|_____|_____(_)_____|_| \_|'...
            ];
            file_header_formatted = object_oriented_simcap.Utils.return_sprintf_compatible_string(...
                file_header...
            );
        end
        function number_format_code = get_number_format_code(self)
            number_format_code = '.4f';
        end
        
        function renamed_cell_datablock = return_renamed_cell_datablock(self,cell_datablock)
            renamed_cell_datablock = return_renamed_cell_datablock@object_oriented_simcap.Writers.EmisFileWriter(...
                self,...
                cell_datablock...
            );
            region_idx = strcmpi(renamed_cell_datablock,'Region');
            renamed_cell_datablock{region_idx} = 'YEARS';
        end
        function header_row_order = get_header_row_order(self)
            header_row_order = {'GAS' 'TODO' 'UNITS' 'YEARS'};
        end
    end
end