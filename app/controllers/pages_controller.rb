class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
    @last_post = Post.order(:created_at).last
    @teachers = Teacher.active.order("grade DESC, name ASC")
    @startdate = Startdate.future.order(:start_on).first
    teachers_size = @teachers.count
    if 12.modulo(teachers_size) == 0
      @teacher_col_width = 12/teachers_size
    else
      @teacher_col_width = 2
    end
  end

  def inside
  end

  def posts
    @posts = Post.published.page(params[:page]).per(10)
  end

  def show_post
    @post = Post.friendly.find(params[:id])
  rescue
    redirect_to root_path
  end


  def email
    @name = params[:name]
    @email = params[:email]
    @message = params[:message]

    if @name.blank?
      flash[:alert] = "Please enter your name before sending your message. Thank you."
      render :contact
    elsif @email.blank? || @email.scan(/\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i).size < 1
      flash[:alert] = "You must provide a valid email address before sending your message. Thank you."
      render :contact
    elsif @message.blank? || @message.length < 10
      flash[:alert] = "Your message is empty. Requires at least 10 characters. Nothing to send."
      render :contact
    elsif @message.scan(/<a href=/).size > 0 || @message.scan(/\[url=/).size > 0 || @message.scan(/\[link=/).size > 0 || @message.scan(/http:\/\//).size > 0
      flash[:alert] = "You can't send links. Thank you for your understanding."
      render :contact
    elsif verify_recaptcha(model: @message, action: "email", minimum_score: 0.5)
      ContactMailer.contact_message(@name, @email, @message).deliver
      redirect_to root_path, notice: "Your message was sent. Thank you."
    else
      @last_post = Post.order(:created_at).last
      @teachers = Teacher.active.order("grade DESC, name ASC")
      @startdate = Startdate.future.order(:start_on).first
      teachers_size = @teachers.count
      if 12.modulo(teachers_size) == 0
        @teacher_col_width = 12/teachers_size
      else
        @teacher_col_width = 2
      end
      render :home
    end
  end

end
