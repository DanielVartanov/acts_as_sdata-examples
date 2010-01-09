class PresidentsController < ApplicationController
  acts_as_sdata :model => President,
                :feed => { :id => 'urn:uuid:60a76c80-d399-11d9-b93C-0003939e0af6',
                           :author => 'Sage',
                           :path => '/presidents',
                           :title => 'List of US presidents' }

  def index
    @presidents = President.all
  end

  def create
    president = President.new(params[:entry].to_attributes)
    if president.save
      render :xml => president.to_atom.to_xml, :status => :created
    else
      render :xml => president.errors.to_xml, :status => :bad_request
    end
  end
end