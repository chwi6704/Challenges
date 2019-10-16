class Image
  attr_accessor :image
  def initialize(image)
    @image = image
  end

  def output_image
    image.each do |row|
      puts row.join('') 
    end
  end

  

  def blur(distance)
    temp_array = Marshal.load(Marshal.dump(image))
    image.each_with_index do |row, row_index| 
      row.each_with_index do |column, col_index| 
        next unless column.to_i.positive?
        distance.times do |count|
          temp_array[row_index][col_index - (count + 1)] = 1 if (col_index - (count +1)).positive?
          temp_array[row_index][col_index + (count + 1)] = 1 if (col_index + (count +1)) < row.length 
          temp_array[row_index - (count + 1)][col_index] = 1 if (row_index - (count +1)).positive?
          temp_array[row_index + (count + 1)][col_index] = 1 if (row_index + (count +1)) < image.length 
        end
      end
    end
    @image = Marshal.load(Marshal.dump(temp_array))
  end

end



image = Image.new([
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
])
image.blur_distance(2)
image.output_image