defmodule Nodes do
    use GenServer

    import Transaction

    def new_node() do
        {:ok, pid} = GenServer.start_link(__MODULE__, [])
        GenServer.cast(pid, {:Create_Wallet})
        pid
    end
    
    def create_txn(pid, to_address, amount, fee \\ 0 ) do
        GenServer.call(pid, {:Create_Txn, [to_address, amount, fee]})
    end
    
    def getwallet_address(pid) do
        GenServer.call(pid, {:Get_Address})
    end
    
    def init(_args) do
        {:ok, %{}}
    end
    
    def handle_cast({:Create_Wallet}, _state) do
        {wallet_address, private_key} = :crypto.generate_key(:ecdh, :secp256k1)
        {:noreply, %{ "wallet_address" => wallet_address, "private_key" => private_key}}
    end
    
    def handle_call({:Create_Txn, [to_address, amount, fee]}, _from, state) do
        txn = new_txn(Map.get(state, "wallet_address"), to_address, amount, fee)
        txn = sign(txn, Map.get(state, "wallet_address"), Map.get(state, "private_key"))
        {:reply, txn, state}
    end
    
    def handle_call({:Get_Address}, _from, state) do
        {:reply, Map.get(state, "wallet_address"), state}
    end

end