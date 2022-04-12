import React from "react";

const Greeter = (props) => {
    const name = props.name;
    return (
        <section className="phx-hero">
            <h1>Welcome to {name} with esbuild and React!</h1>
            <p>Peace-of-mind from prototype to production</p>
        </section>
    )
}

export default Greeter;