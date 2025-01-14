function result = myFunction(input)
  % Some code that might cause an error
  result = input * 2; 
  if input == 0
    error('Cannot divide by zero');
  end
  result = result / input; 
end

% Example usage that might cause the error
myFunction(0)