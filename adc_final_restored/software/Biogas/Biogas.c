#define ESP_ADDR 0x5060
#define ADC_ADDR 0x5000
#define HEATER_ADDR 0x5050
#define ACID_ADDR 0x5040
#define BASE_ADDR 0x5030
#define ESPTYPE_ADDR 0x5020
#define LED_ADDR 0x5070

volatile int * adc = (int*)(ADC_ADDR);
volatile int * led = (int*)(LED_ADDR);
volatile int * esp = (int*)(ESP_ADDR);
volatile int * heater = (int*)(HEATER_ADDR);
volatile int * acid = (int*)(ACID_ADDR);
volatile int * base = (int*)(BASE_ADDR);
volatile int * esptype = (int*)(ESPTYPE_ADDR);

volatile int pH;
volatile int temp;
volatile int pressure;
volatile int adc0;
volatile int adc1;
volatile int adc2;

volatile int maxpH;
volatile int minpH;
volatile int tarpH;
volatile int maxtemp;
volatile int mintemp;

volatile int pacid;
volatile int pbase;

void calc();
void adcRead(int channel);
void pump();
void delay();
void heat();
void espdata();

void main()
{
	//Assign initial values
	maxpH=96; //7.4
	minpH=102; //6.8
	tarpH=99; //7.1
	maxtemp=12; //60
	mintemp=88; //50
	pacid=0;
	pbase=0;
	while(1)
	{
		adcRead(0);
		adcRead(1);
		adcRead(2);
		calc();
		espdata();
		pump();
		delay(40);
		*(base)=0;
		*(acid)=0;
		heat();
		*(led)=pH;
		delay(400); //20s delay
	}
}

void calc()
{
	pH = adc0/16;
	//temp=adc1/16;
	temp=adc1/16;
	pressure=adc2/16;
}

void adcRead(int channel)
{
	if(channel == 0)
	{
		*(adc)=0;
		adc0=*(adc);
	}
	else if(channel == 1)
	{
		*(adc)=0;
		adc1=*(adc+1);
	}
	else if(channel == 2)
	{
		*(adc)=0;
		adc2=*(adc+2);
	}
}

void pump()
{
	if (pH<maxpH){
		*(acid)=1;
		*(base)=0;
		pacid=1;
		//delay(100);
	}
	else if (pH>minpH){
		*(base)=1;
		*(acid)=0;
		//delay(100);
	}
	if (pacid==1 && pH>tarpH){
		pacid=0;
		*(acid)=0;
	}
	else if (pbase==1 && pH<tarpH){
		pbase=0;
		*(base)=0;
	}
}

void heat()
{
	if(temp > mintemp)
	{
		*(heater)=1;
	}
	else if (temp < maxtemp)
	{
		*(heater)=0;
	}
}

void espdata()
{
	*(esptype)=0;
	*(esp)=pH;
	delay(1);
	*(esptype)=1;
	*(esp)=temp;
	delay(1);
	*(esptype)=2;
	*(esp)=pressure;
	delay(1);
}

void delay(volatile int a)
{
	volatile int delay;
	volatile int delay2;
	for(delay2=a;delay2>0;delay2--){
		for(delay=100000;delay!=0;delay--);
	}
}
