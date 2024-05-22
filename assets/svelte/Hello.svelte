<script lang="ts">
    import { Live } from "live_svelte"
    import { onMount } from "svelte";
    export let name: string;
    export let props: Record<string, any>;
    $: number = props.number;
    export let live: Live;

    onMount(() => {
        console.log("Component Name: ", name);
        console.log("Component Props: ", props);
    })

    const increase = () => {
        live.pushEvent("set_number", {number: number + 1}, () => { console.log("Number Increased") });
    }

    const decrease = () => {
        live.pushEvent("set_number", {number: number - 1}, () => { console.log("Number Decreased") });
    }
</script>

<h2>The number is: {number}</h2>
<button class="p-2 rounded-full bg-slate-700 text-white inline-block" on:click={increase}>+</button>
<button class="p-2 rounded-full bg-slate-700 text-white inline-block" on:click={decrease}>-</button>