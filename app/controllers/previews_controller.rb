class PreviewsController < ApplicationController
  def show
    # プレビュー用の限定的な情報のみを表示
    @preview_data = {
      title: "Parts Sync",
      description: "カーパーツ売上管理システム",
      image_url: view_context.image_url("ogp.png")
    }

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @preview_data }
    end
  end
end
