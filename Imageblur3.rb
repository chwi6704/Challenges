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

  def blur_distance(distance)
    distance.times do 
      blur
    end
  end

  def blur
    temp_array = Marshal.load(Marshal.dump(image))
    image.each_with_index do |row, row_index| 
      row.each_with_index do |column, col_index| 
        if column == 1
          temp_array[row_index][col_index - 1] = 1 if col_index > 0
          temp_array[row_index][col_index + 1] = 1 if row.length > col_index + 1 
          temp_array[row_index - 1][col_index] = 1 if row_index > 0
          temp_array[row_index + 1][col_index] = 1 if image.length > row_index + 1 
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
  [0, 0, 0, 0],
  [0, 1, 0, 0],
  [0, 0, 0, 1],
  [0, 0, 0, 0],
])
image.blur_distance(2)
image.output_image


