// cerner_2^5_2018
import java.util.function.Consumer;

public class BuilderPatternWithConsumer {
    public static void main(String[] args) {
        Worker.doWork(config -> config.config1("this is the first config item")
                                      .config2("this is the second config item ... etc."));
    }
}

public class Worker {
    private Worker() {
    }

    public Worker config1(String config1) {
        // todo: apply config1
        return this;
    }

    public Worker config2(String config2) {
        // todo: apply config2
        return this;
    }

    // todo: etc.

    public static void doWork(Consumer<Worker> workerCreated) {
        Worker worker = new Worker();
        workerCreated.accept(worker);
        // todo: do work
    }
}