function [up_inv, neto] = pawnShop( inv, log )

    [~, ~, inv] = xlsread(inv);
    inv(1,:) = [];
    [~, ~, log] = xlsread(log);
    log(1,:) = [];

    [hei_log, ~] = size(log);
    status = NaN;
    neto = 0;
    idxs = [];
    
    
    for ind = 1:hei_log
        item_log = log{ind, 2};
        status = log{ind, 3};
        price_log = log{ind, 4};
        
        if strcmp(status, 'Buy')
        % Write code when customer buying
            [hei_inv, ~] = size(inv);
            for idx = 1:hei_inv
                item_inv = inv{idx, 1};
                price_inv = inv{idx, 2};
                
                if strcmp(item_log, item_inv) && price_log >= price_inv
                    idxs = [idxs idx];
                    neto = neto + price_log; 
                    
                end
            end
        
        elseif strcmp(status, 'Sell')
        % Write code when customer selling
            new_item = item_log;
            new_price = price_log;
            neto = neto - round(price_log./2, 2);
            [hei_inv_n, ~] = size(inv);
            inv{hei_inv_n + 1, 1} = new_item;
            inv{hei_inv_n + 1, 2} = new_price;
        end
        
    end
    
    idxs = sort(idxs);
    for i = idxs(end:-1:1)
    inv(i,:) =[];
    end
    
    up_inv = inv;
    
end

