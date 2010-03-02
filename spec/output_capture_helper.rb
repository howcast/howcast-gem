module OutputCaptureHelper
  def start_capturing_output
    return @stdout, @stderr if @old_stdout or @old_stderr
    @stdout, @stderr = StringIO.new, StringIO.new
    @old_stdout, @old_stderr, $stdout, $stderr = $stdout, $stderr, @stdout, @stderr
    return captured_output
  end

  def captured_output
    return *[@stdout, @stderr].map(&:string)
  end

  def stop_capturing_output
    $stdout, $stderr, @old_stdout, @old_stderr = @old_stdout, @old_stderr, nil, nil
    return captured_output
  end

  def capture_output &noisy_block
    begin
      start_capturing_output
      yield @stdout, @stderr
    ensure
      stop_capturing_output
    end
  end
end
