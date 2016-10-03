function [ slapit ] = ERS( stack )

if stack(end) == 7
    slapit = 'seven';
elseif stack(end) == stack(end-1)
    slapit = 'double';
elseif (stack(end) == 12 & stack(end-1) == 13) | (stack(end) == 13 & stack(end) == 12)
    slapit = 'marriage';
elseif length(stack) > 2 && stack(end) == stack(end - 2)
    slapit = 'sandwich'; 
else
    slapit = 0;
end

if ischar(slapit)
    slapit = ['There is a ' slapit ', so quickly slap!'];
else
    slapit = 'Do not slap, it is a trap!';
end
end

