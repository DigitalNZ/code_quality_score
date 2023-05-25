#!/usr/bin/env ruby
# frozen_string_literal: true

require "code_quality_score/score_snapshotter"

# inputs
is_gem = ARGV[0]
puts "Calculating score snapshot for #{is_gem ? "gem" : "app"}..."

# calculate score snapshot
score_snapshot = CodeQualityScore::ScoreSnapshotter.calculate_score_snapshot(is_gem)
puts(score_snapshot)
