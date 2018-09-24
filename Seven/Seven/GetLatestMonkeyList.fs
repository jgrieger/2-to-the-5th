open System.Net.Http
open Newtonsoft.Json

// cerner_2^5_2018

type Monkey = {Name:string; Population:int}

[<EntryPoint>]
let main argv =    
    use client = new HttpClient()
    let json = client.GetStringAsync("https://montemagno.com/monkeys.json").Result
    JsonConvert.DeserializeObject<Monkey list>(json) 
    |> List.sortBy (fun(m:Monkey)->m.Population) 
    |> List.iter (fun(m:Monkey)->printfn "%s (Population: %d)" m.Name m.Population)
    0 // return an integer exit code