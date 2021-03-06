/*
 * Copyright 2013 JBoss Inc
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.optaplanner.core.impl.heuristic.selector.move.decorator;

import java.util.Iterator;

import org.optaplanner.core.impl.heuristic.selector.common.SelectionCacheType;
import org.optaplanner.core.impl.heuristic.selector.common.decorator.SelectionSorter;
import org.optaplanner.core.impl.heuristic.selector.move.MoveSelector;
import org.optaplanner.core.impl.heuristic.move.Move;
import org.optaplanner.core.impl.solver.scope.DefaultSolverScope;

public class SortingMoveSelector extends AbstractCachingMoveSelector {

    protected final SelectionSorter sorter;

    public SortingMoveSelector(MoveSelector childMoveSelector, SelectionCacheType cacheType,
            SelectionSorter sorter) {
        super(childMoveSelector, cacheType);
        this.sorter = sorter;
    }

    // ************************************************************************
    // Worker methods
    // ************************************************************************

    @Override
    public void constructCache(DefaultSolverScope solverScope) {
        super.constructCache(solverScope);
        sorter.sort(solverScope.getScoreDirector(), cachedMoveList);
        logger.trace("    Sorted cachedMoveList with size ({}) in moveSelector({}).",
                cachedMoveList.size(), this);
    }

    public boolean isNeverEnding() {
        return false;
    }

    public Iterator<Move> iterator() {
        return cachedMoveList.iterator();
    }

    @Override
    public String toString() {
        return "Sorting(" + childMoveSelector + ")";
    }

}
