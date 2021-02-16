# Digital-electronics-1.0
## Labs

1) [Hanka-Git](https://github.com/HankaK-git/Digital-electronics-1.0)

2) 

```
entity gates is
    port(
        a_i    : in  std_logic;         
        b_i    : in  std_logic;         
        for_o  : out std_logic;         
        fand_o : out std_logic;         
        fxor_o : out std_logic         
    );
end entity gates;


architecture dataflow of gates is
begin
    for_o  <= a_i or b_i;
    fand_o <= a_i and b_i;
    fxor_o <= a_i xor b_i;

end architecture dataflow;
```

3) 
