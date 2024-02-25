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

![DDS](https://wirelesspi.com/wp-content/uploads/2023/01/figure-dds-nco-ideal.png)

<!--![DDS Architecture](https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOZWxcCP_ocs9JiWnQDCXk_Zzhbe4Oy1zN1m1MYqjwPTdmV_FTgtPh4Wc5zBnKn8yfeuw&usqp=CAU)-->

<!--![dds](https://ars.els-cdn.com/content/image/3-s2.0-B9780128154052000051-f05-09-9780128154052.jpg)-->
### Phase Accumulator
The phase accumulator consists of a frequency register (`phase`) in which the phases are accumulated and an FCW aka frequency control word (`increment`) that gives the constant phase value that needs to be added into the frequency register. To calculate FCWs for different frequencies this formula was used:
```math
\text{FCW} = \frac{2^N \times \text{Desired Frequency}}{\text{Clock Frequency}}

```
where the number of bits ``N = 10``.

### Phase-to-Amplitude Generator
The sine wave look-up table values were obtained using [this](https://deepbluembedded.com/sine-lookup-table-generator-calculator/) calculator. 100 points were taken, and the signal amplitude was scaled and offset by a factor of 100. The output was: 
```
{
100, 106, 113, 119, 125, 131, 137, 143, 148, 154,
159, 164, 168, 173, 177, 181, 184, 188, 190, 193,
195, 197, 198, 199, 200, 200, 200, 199, 198, 197,
195, 193, 190, 188, 184, 181, 177, 173, 168, 164,
159, 154, 148, 143, 137, 131, 125, 119, 113, 106,
100, 94, 87, 81, 75, 69, 63, 57, 52, 46,
41, 36, 32, 27, 23, 19, 16, 12, 10, 7,
5, 3, 2, 1, 0, 0, 0, 1, 2, 3,
5, 7, 10, 12, 16, 19, 23, 27, 32, 36,
41, 46, 52, 57, 63, 69, 75, 81, 87, 94
}
```
## Implementation
The Verilog code was written and simulated using ``Xilinx Vivado v2020.1``. The file ``phase_accumulator.v`` consists the code for the phase accumulator and the file ``phase_to_amplitude_converter.v`` consists of the look-up table/ranges used to map a given phase to its amplitude. Both of these modules were then cascaded using the top level module, ``sine_wave_generator.v``.

## Results
