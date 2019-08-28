using System;
using System.CodeDom;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    class MyClass
    {
        public string firstproperties;

        public MyClass()
        {

        }
        public static MyClass operator +(MyClass a, MyClass b)
        {
            MyClass result = new MyClass();
            return result;
        }

        public void test()
        {
            Console.WriteLine(firstproperties);
        }
    }

    class MyClass1
    {
        public string firstproperties;
        MyClass1()
        {

        }

        public void print()
        {
            Console.WriteLine(firstproperties);
        }
    }

    class Program
    {
        void refParam(ref int a)
        {
            int result = 6;
            a = result;
        }

        void outParam(out int a)
        {
            int result = 5;
            a = result;
        }
        
        public delegate int mydele(string a);
        static void Main(string[] args)
        {
            MyClass a = new MyClass();
            a.firstproperties = "first";
            a.test();
            object b = (object) a;
            Console.WriteLine(b.ToString());
            MyClass1 c = (MyClass1) b;
            c.print();
            Console.Read();
        }
    }
}
