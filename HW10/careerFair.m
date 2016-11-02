function [all_app, selected] = careerFair( txt_fil, nums )
applicant = struct;

for i = 1:nums
   if i < 10
    fname = sprintf([txt_fil '0%d' '.txt'], i);
   else
    fname = sprintf([txt_fil '%d' '.txt'], i);
   end
   fh = fopen(fname, 'r');
   applicant(i).MATLAB = 0;
   
   while ~feof(fh)
      lin = fgetl(fh);
      
      if ~isempty(regexp(lin, 'MATLAB', 'ONCE'))
          q = length(regexp(lin, 'MATLAB'));
          if isfield(applicant(i), 'MATLAB')
              applicant(i).MATLAB = applicant(i).MATLAB + q; 
          end
      end
      
      if ~isempty(regexp(lin, '^Name', 'ONCE'))
        applicant(i).Name = strtrim(lin(regexp(lin, 'Name')+5:end));
      elseif ~isempty(regexp(lin, 'Skills', 'ONCE'))
          lin = lin(regexp(lin, 'Skills', 'ONCE')+8:end);
          list = {};
          while ~isempty(lin)
              [tok, lin] = strtok(lin, ',');
              list = [list {strtrim(tok)}];
          end
          applicant(i).Skills = list;
      elseif ~isempty(regexp(lin, 'GPA', 'ONCE'))
          applicant(i).GPA = str2double(strtrim(lin(regexp(lin, 'GPA')+4:end)));
      elseif ~isempty(regexp(lin, 'Education', 'ONCE'))
          applicant(i).Education = strtrim(lin(regexp(lin, 'Education', 'ONCE') + 11:end));
      end
   end
    
end
all_app = applicant;
len = length(applicant);
list = [];
dalist = applicant;
for i = 1:len
    
   if strcmp(applicant(i).Education, 'Georgia Institute of Technology') || strcmp(applicant(i).Education, 'Georgia Tech')
       applicant(i).GPA = applicant(i).GPA*1.5;
   elseif strcmp(applicant(i).Education, 'University of Georgia') || strcmp(applicant(i).Education, 'UGA')
       applicant(i).GPA = applicant(i).GPA*0.75;
   end
       applicant(i).GPA = applicant(i).GPA + applicant(i).MATLAB;
   
   list = [list, applicant(i).GPA];
end

med = median(list);
list = [];
for i = len:-1:1
    if applicant(i).GPA < med
        applicant(i) = [];
        dalist(i) = [];
    else
        list = [list, applicant(i).GPA];
    end
end

[~, idxs] = sort(list, 'descend');

selected = dalist(1, idxs);

end

