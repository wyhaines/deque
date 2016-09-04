require 'test_helper'

class DequeTest < Minitest::Test
    def test_that_it_has_a_version_number
        refute_nil ::Deque::VERSION
    end

    def test_it_does_something_useful
        assert false
    end

    def test_a_new
        dq = nil
        dq = Swiftcore::Deque.new
        assert_kind_of(Swiftcore::Deque, dq)
    end

    def test_b_unshift
        dq = Swiftcore::Deque.new

        dq.unshift 'a'
        dq.unshift 'b'
        dq.unshift 'c'

        assert_equal('["c","b","a"]', dq.inspect)
    end

    def test_c_shift
        dq = Swiftcore::Deque.new
        dq.unshift 'a'
        dq.unshift 'b'
        dq.unshift 'c'
        assert_equal('c', dq.shift)
        assert_equal('b', dq.shift)
        assert_equal('a', dq.shift)
        assert_equal(nil, dq.shift)
    end

    def test_d_push
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push 'b'
        dq.push 'c'

        assert_equal('["a","b","c"]', dq.inspect)
    end

    def test_e_pop
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push 'b'
        dq.push 'c'
        assert_equal('c', dq.pop)
        assert_equal('b', dq.pop)
        assert_equal('a', dq.pop)
        assert_equal(nil, dq.pop)
    end

    def test_f_size
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push 'b'
        dq.push 'c'
        assert_equal(3, dq.size)
    end

    def test_g_max_size
        dq = Swiftcore::Deque.new
        dq.max_size
    end

    def test_h_clear
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push 'b'
        dq.push 'c'
        dq.clear
        assert_equal(0, dq.size)
        assert_equal('[]', dq.inspect)
    end

    def test_i_empty
        dq = Swiftcore::Deque.new
        dq.push 'a'
        assert(!dq.empty?)
        dq.clear
        assert(dq.empty?)
    end

    def test_j_to_s
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push 'b'
        dq.push 'c'
        assert_equal('abc', dq.to_s)
    end

    def test_k_to_a
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push 'b'
        dq.push 'c'
        assert_equal(%w(a b c), dq.to_a)
    end

    def test_l_first
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push 'b'
        dq.push 'c'
        assert_equal('a', dq.first)
    end

    def test_m_last
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push 'b'
        dq.push 'c'
        assert_equal('c', dq.last)
    end

    def test_n_at
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push 'b'
        dq.push 'c'
        assert_equal('a', dq.at(0))
        assert_equal('a', dq[0])
        assert_equal('b', dq.at(1))
        assert_equal('b', dq[1])
        assert_equal('c', dq.at(2))
        assert_equal('c', dq[2])
    end

    def test_o_index
        dq = Swiftcore::Deque.new
        dq.push 'a'
        dq.push :b
        dq.push 37
        assert_equal(0, dq.index('a'))
        assert_equal(1, dq.index(:b))
        assert_equal(2, dq.index(37))
    end
end
