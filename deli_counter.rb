
# katz_deli = []
# other_deli = ["Logan", "Avi", "Spencer"]
# another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]
 
# show customers current place in line
# if no line, say it is empty.
# new customer enters and they take a number using two arguments



def line(katz_deli)
    if katz_deli.empty?
        puts "The line is currently empty."
    else 
        # make a statement that starts with "The line is currently:"
        # take each name and add number in front of it that represents
        # its spot in line, and then add that to statement above.
        # print out the statement
        status = ["The line is currently:"]
        katz_deli.each.with_index(1) do |name, index|
            status.push("#{index}. #{name}")
        end
        puts status.join(" ")
     #   current_order = [index other_deli]
     #   puts 
        
    end
end

# new person enters
# two arguments = array for current line of people and
#   a string containing the person's name along with their position in line

# "#take_a_number"
#     context "there is nobody in line" do
#       it "should add a person to the line" do
#         expect($stdout).to receive(:puts).with("Welcome, Ada. You are number 1 in line.")
#         take_a_number(katz_deli, "Ada")
#         expect(katz_deli).to eq(["Ada"])
#       end
#     end



def take_a_number(katz_deli, name)
    katz_deli << (name)
        puts "Welcome, #{name}. You are number #{katz_deli.length} in line."

end
    # katz_deli.each_with_index do |name, index|
    #     status.push("#{name}. You are number #{index} in line.")
    # end
    # puts status.join("")


def now_serving(katz_deli)
    if katz_deli.length == 0
        puts "There is nobody waiting to be served!"
    else katz_deli.length > 0
        puts "Currently serving #{katz_deli[0]}."
    end
    katz_deli.shift
end




