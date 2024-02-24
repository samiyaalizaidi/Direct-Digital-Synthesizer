# Direct Digital Synthesizer for Sine Wave Generation
Generating discrete-time Sine waves of different frequencies.

## Parameters
<ol>
<li>Clock Frequency: 1 MHz</li>
<li>Minimum Frequency Range: 1-10 KHz</li>
<li>Maximum Frequency Range: 125-250 KHz</li> 
<li>Number of Registers Allowed: 8-10</li>
<li>10-bit Digital Representation</li>
</ol>

## Architecture

![DDS Architecture](https://www.analog.com/en/_/media/images/analog-dialogue/en/volume-38/number-3/articles/all-about-direct-digital-synthesis/dds_fig-05.gif?rev=586c84e827e942878b561a6f41bf3892&sc_lang=en)

### Phase Accumulator

### Phase-to-Amplitude Generator
The sine wave look-up table values were obtained using [this](https://deepbluembedded.com/sine-lookup-table-generator-calculator/) calculator. 100 points were taken, and the signal amplitude was scaled and offset by a factor of 100.

## System Specifications

## Results
