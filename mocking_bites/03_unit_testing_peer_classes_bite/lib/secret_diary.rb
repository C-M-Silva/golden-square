class SecretDiary
    def initialize(diary) # diary is an instance of Diary
        @diary = diary
        @lock = 1
    end
  
    def read
      # Raises the error "Go away!" if the diary is locked
      # Returns the diary's contents if the diary is unlocked
      # The diary starts off locked
      if @lock == 0
        return 'Go away!'
      else
        return @diary.read
      end
    end
  
    def lock
        @lock = 0
    end
  
    def unlock
        @lock = 1
    end
  end