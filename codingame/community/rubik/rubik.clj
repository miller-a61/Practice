(ns Solution
  (:gen-class))

(defn -main [& args]
  (let [N (read)]
    (if (> N 1) (println (+ 8 (*(* N 6)(- N 2))) )(println "1"))))

