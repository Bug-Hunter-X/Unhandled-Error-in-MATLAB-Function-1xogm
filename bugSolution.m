function result = myFunctionImproved(input)
  try
    % Perform calculation
    result = input * 2;
    if input == 0
      error('Cannot divide by zero');
    end
    result = result / input;
  catch exception
    % Handle different exception types
    if strcmp(exception.identifier, 'MATLAB:divideByZero')
      fprintf('Error: Division by zero detected.\n');
    elseif strcmp(class(exception.message), 'char')
      fprintf('Error: %s\n', exception.message);
    else
      fprintf('An unexpected error occurred.\n');
      rethrow(exception); % Rethrow unexpected errors
    end
    result = NaN; % Set result to NaN if error occurred
  end
end

% Example usage
myFunctionImproved(0) % Division by zero
myFunctionImproved('a') % Non-numeric input
myFunctionImproved(5) % Correct input