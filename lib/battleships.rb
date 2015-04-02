require 'sinatra/base'
Dir[File.dirname(__FILE__) + '/*.rb'].each { |file| require file }



class BattleShips < Sinatra::Base
  set :views, Proc.new {File.join(root, "..","views")}
  set :public_folder, Proc.new { File.join(root, "..", "public") }

  GAME = Game.new

  get '/' do
    erb(:index)
  end

  get '/registration' do
    erb(:registration)
  end

  post '/game' do
    puts params.inspect
    # {"Name"=>"mihai", "board_size"=>"9", "pieces"=>"1"}
    player_one = Player.new(params[:Name])
    player_two = Player.new('Computer')
    player_one_board = Board.new({size: params[:board_size].to_i, cell: Cell})
    player_two_board = Board.new({size: params[:board_size].to_i, cell: Cell})
    player_one.board = player_one_board
    player_two.board = player_two_board
    GAME.add_player player_one
    GAME.add_player player_two
    player_one_board.fill_all_content Water.new
    player_two_board.fill_all_content Water.new
    @ship = Ship.new
    # player_one.board.place(ship, :A1)
    @board = player_one.board.grid
    @board1 = player_one.board
    @player = player_one
    erb(:game)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0

end
