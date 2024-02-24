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
The sine wave look-up table values were obtained using [this](https://deepbluembedded.com/sine-lookup-table-generator-calculator/) calculator. 100 points were taken, and the signal amplitude was scaled and offset by a factor of 100.

## System Specifications

## Results
