function [ amount_per_kid, candy_wasted ] = candy( bag_size, num_kids )

% getting amount of candy per kid
amount_per_kid = floor(bag_size/num_kids);

% getting amount of candy wasted
candy_wasted = floor((bag_size/num_kids - amount_per_kid) * num_kids);

end

