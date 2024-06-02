mod xgb_inference;

fn main(input_vector: Span<i32>) -> i32 {
    let tree_0 = xgb_inference::Tree {
    base_weights: array![-3, 140051, -96106, -143133, 202375, 158626, -141358, 56417, -174129, 205310, -46341, 61726, -54763, -182726, 81571, -57392, 51380, 59557, 62093, 55093, -187146, 123976, -54763, 50349, -40098, -42359, -188851, 61159, 33182, -48661, 46643, -57846, -45702, -47421, 60062].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 15, 17, 0, 0, 0, 19, 21, 0, 0, 23, 0, 0, 25, 27, 0, 0, 0, 29, 31, 0, 33, 0, 0, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 16, 18, 0, 0, 0, 20, 22, 0, 0, 24, 0, 0, 26, 28, 0, 0, 0, 30, 32, 0, 34, 0, 0, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 18, 10, 4, 7, 0, 7, 12, 0, 0, 0, 13, 9, 0, 0, 1, 0, 0, 2, 20, 0, 0, 0, 10, 16, 0, 3, 0, 0, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 200000, 200000, 300000, 100000, 56417, 100000, 100000, -46341, 61726, -54763, 200000, 100000, -57392, 51380, 300000, 62093, 55093, 100000, 200000, -54763, 50349, -40098, 100000, 200000, 61159, 100000, -48661, 46643, -57846, -45702, -47421, 60062].span()
};
    let tree_1 = xgb_inference::Tree {
    base_weights: array![-453, 106758, -75062, -111531, 153759, 120594, -110496, 43576, -136591, 156085, -37514, 46979, -43395, -143277, 61906, -45260, 40351, 44991, 47215, 42730, -146884, 94450, -43395, 39687, -33144, -45585, -107558, 46614, 25152, 64244, -46918, -36560, 45909].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 15, 17, 0, 0, 0, 19, 21, 0, 0, 23, 0, 0, 25, 27, 0, 0, 0, 0, 29, 0, 31, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 16, 18, 0, 0, 0, 20, 22, 0, 0, 24, 0, 0, 26, 28, 0, 0, 0, 0, 30, 0, 32, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 18, 10, 4, 7, 0, 7, 12, 0, 0, 0, 13, 9, 0, 0, 1, 0, 0, 16, 20, 0, 0, 0, 0, 18, 0, 3, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 200000, 200000, 300000, 100000, 43576, 100000, 100000, -37514, 46979, -43395, 200000, 100000, -45260, 40351, 300000, 47215, 42730, 200000, 200000, -43395, 39687, -33144, -45585, 600000, 46614, 100000, 64244, -46918, -36560, 45909].span()
};
    let tree_2 = xgb_inference::Tree {
    base_weights: array![-503, 91969, -65032, -96177, 132321, 103529, -95741, 37157, -118546, 134445, -32236, 40456, -37627, -124566, 52675, -39506, 34283, 36530, 40698, 36382, -127827, 80611, -37627, 33714, -28572, -39844, -90487, -5571, 120864, 47387, -40294, 38181, -39355, -19772, 41949].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 15, 17, 0, 0, 0, 19, 21, 0, 0, 23, 0, 0, 25, 27, 0, 0, 0, 0, 29, 31, 33, 0, 0, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 16, 18, 0, 0, 0, 20, 22, 0, 0, 24, 0, 0, 26, 28, 0, 0, 0, 0, 30, 32, 34, 0, 0, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 18, 10, 4, 7, 0, 7, 12, 0, 0, 0, 13, 9, 0, 0, 1, 0, 0, 16, 1, 0, 0, 0, 0, 18, 20, 14, 0, 0, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 200000, 200000, 300000, 100000, 37157, 100000, 100000, -32236, 40456, -37627, 200000, 100000, -39506, 34283, 300000, 40698, 36382, 200000, 100000, -37627, 33714, -28572, -39844, 600000, 100000, 500000, 47387, -40294, 38181, -39355, -19772, 41949].span()
};
    let tree_3 = xgb_inference::Tree {
    base_weights: array![-505, 83634, -59233, -86863, 120289, 93743, -87195, 33125, -107822, 122358, -28546, 36788, -34024, -113841, 46747, -36166, 30241, 30684, 37075, 32323, -116953, 71914, -34024, 29698, -25219, -36567, -80714, -4882, 107595, 39473, -36538, 34408, -35187, -15542, 37967].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 15, 17, 0, 0, 0, 19, 21, 0, 0, 23, 0, 0, 25, 27, 0, 0, 0, 0, 29, 31, 33, 0, 0, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 16, 18, 0, 0, 0, 20, 22, 0, 0, 24, 0, 0, 26, 28, 0, 0, 0, 0, 30, 32, 34, 0, 0, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 18, 10, 4, 7, 0, 7, 12, 0, 0, 0, 13, 9, 0, 0, 1, 0, 0, 16, 1, 0, 0, 0, 0, 18, 20, 14, 0, 0, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 200000, 200000, 300000, 100000, 33125, 100000, 100000, -28546, 36788, -34024, 200000, 100000, -36166, 30241, 300000, 37075, 32323, 200000, 100000, -34024, 29698, -25219, -36567, 600000, 100000, 500000, 39473, -36538, 34408, -35187, -15542, 37967].span()
};
    let tree_4 = xgb_inference::Tree {
    base_weights: array![-483, 78353, -55441, -80386, 112700, 87350, -81601, 30208, -100606, 114798, -25691, 34467, -31451, -106994, 42509, -34002, 27204, 26208, 34826, 29345, -110066, 65803, -31451, 26666, -22577, -34503, -74224, 17923, 35836, 34686, -34121, 32854, -11981].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 15, 17, 0, 0, 0, 19, 21, 0, 0, 23, 0, 0, 25, 27, 0, 0, 0, 0, 29, 31, 0, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 16, 18, 0, 0, 0, 20, 22, 0, 0, 24, 0, 0, 26, 28, 0, 0, 0, 0, 30, 32, 0, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 18, 10, 4, 7, 0, 7, 12, 0, 0, 0, 13, 9, 0, 0, 1, 0, 0, 16, 2, 0, 0, 0, 0, 18, 20, 0, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 200000, 200000, 300000, 100000, 30208, 100000, 100000, -25691, 34467, -31451, 200000, 100000, -34002, 27204, 300000, 34826, 29345, 200000, 500000, -31451, 26666, -22577, -34503, 600000, 200000, 35836, 34686, -34121, 32854, -11981].span()
};
    let tree_5 = xgb_inference::Tree {
    base_weights: array![-374, 74734, -52169, -75356, 107530, 82741, -76686, 27865, -95247, 109719, -23327, 32875, -29405, -102289, 37774, -32482, 24727, 22564, 33334, 26936, -105398, -6034, 32661, 24192, -20393, -33122, -69403, 33668, -43302, 31339, -32415, 3851, -32981].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 15, 17, 0, 0, 0, 19, 21, 0, 0, 23, 0, 0, 25, 27, 0, 0, 0, 0, 29, 0, 31, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 16, 18, 0, 0, 0, 20, 22, 0, 0, 24, 0, 0, 26, 28, 0, 0, 0, 0, 30, 0, 32, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 18, 10, 4, 7, 0, 7, 12, 0, 0, 0, 13, 4, 0, 0, 1, 0, 0, 16, 19, 0, 0, 0, 0, 18, 0, 20, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 200000, 200000, 300000, 100000, 27865, 100000, 100000, -23327, 32875, -29405, 200000, 600000, -32482, 24727, 300000, 33334, 26936, 200000, 400000, 32661, 24192, -20393, -33122, 600000, 33668, 100000, 31339, -32415, 3851, -32981].span()
};
    let tree_6 = xgb_inference::Tree {
    base_weights: array![-280, 72080, -49521, -71042, 103774, 79100, -72671, 25833, -90882, 106109, -21285, 31702, -27628, -98846, 33435, -31329, 22596, 19494, 32296, 24846, -102055, 58423, -29645, 22070, -18533, -32155, -65449, 31726, 12253, 28736, -31102, -20517, 30323].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 15, 17, 0, 0, 0, 19, 21, 0, 0, 23, 0, 0, 25, 27, 0, 0, 0, 0, 29, 0, 31, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 16, 18, 0, 0, 0, 20, 22, 0, 0, 24, 0, 0, 26, 28, 0, 0, 0, 0, 30, 0, 32, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 18, 10, 4, 7, 0, 7, 12, 0, 0, 0, 13, 9, 0, 0, 1, 0, 0, 16, 20, 0, 0, 0, 0, 18, 0, 3, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 200000, 200000, 300000, 100000, 25833, 100000, 100000, -21285, 31702, -27628, 200000, 100000, -31329, 22596, 300000, 32296, 24846, 200000, 200000, -29645, 22070, -18533, -32155, 600000, 31726, 100000, 28736, -31102, -20517, 30323].span()
};
    let tree_7 = xgb_inference::Tree {
    base_weights: array![-168, 69995, -47601, -67014, 100863, 75948, -69840, 23980, -87001, 103399, -19476, 30770, -25981, -96156, 31200, -30382, 20705, 16864, 31541, 22953, -99526, 54694, -27843, 18011, -9149, -31450, -61903, 12265, 32175, 26541, -30000, -11762, 28413].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 15, 17, 0, 0, 0, 19, 21, 0, 0, 23, 0, 0, 25, 27, 0, 0, 0, 0, 29, 31, 0, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 16, 18, 0, 0, 0, 20, 22, 0, 0, 24, 0, 0, 26, 28, 0, 0, 0, 0, 30, 32, 0, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 18, 10, 4, 7, 0, 7, 12, 0, 0, 0, 13, 9, 0, 0, 2, 0, 0, 16, 2, 0, 0, 0, 0, 18, 3, 0, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 200000, 200000, 300000, 100000, 23980, 100000, 100000, -19476, 30770, -25981, 200000, 100000, -30382, 20705, 400000, 31541, 22953, 200000, 500000, -27843, 18011, -9149, -31450, 600000, 100000, 32175, 26541, -30000, -11762, 28413].span()
};
    let tree_8 = xgb_inference::Tree {
    base_weights: array![17, 68182, -45410, -62998, 98335, 72980, -66545, 23414, -29277, 101126, -17857, 29966, -24389, -93899, 28228, -21625, 25336, 15577, 30966, 21200, -97490, 49217, -26185, 16512, -7730, -30911, -58488, 29857, 3391, 24581, -28991, -17421, 27269].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 15, 0, 17, 0, 0, 0, 19, 21, 0, 0, 23, 0, 0, 25, 27, 0, 0, 0, 0, 29, 0, 31, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 16, 0, 18, 0, 0, 0, 20, 22, 0, 0, 24, 0, 0, 26, 28, 0, 0, 0, 0, 30, 0, 32, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 4, 10, 4, 7, 4, 0, 12, 0, 0, 0, 13, 9, 0, 0, 2, 0, 0, 16, 20, 0, 0, 0, 0, 18, 0, 3, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 300000, 200000, 300000, 100000, 100000, -29277, 100000, -17857, 29966, -24389, 200000, 100000, -21625, 25336, 400000, 30966, 21200, 200000, 200000, -26185, 16512, -7730, -30911, 600000, 29857, 100000, 24581, -28991, -17421, 27269].span()
};
    let tree_9 = xgb_inference::Tree {
    base_weights: array![63, 66109, -43605, -60454, 96010, 69982, -63900, 20363, -80601, 99117, -16400, 29210, -22822, -91852, 26276, -28745, 16945, 4368, 30500, 19564, -95729, 30754, -8904, -30475, -55030, -37483, 24830, 22769, -27995, 3869, -28090].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 15, 17, 0, 0, 0, 19, 21, 0, 0, 0, 0, 0, 23, 0, 25, 0, 27, 29, 0, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 16, 18, 0, 0, 0, 20, 22, 0, 0, 0, 0, 0, 24, 0, 26, 0, 28, 30, 0, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 18, 18, 10, 4, 7, 0, 7, 12, 0, 0, 0, 13, 19, 0, 0, 0, 0, 0, 16, 0, 4, 0, 18, 20, 0, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 200000, 200000, 200000, 300000, 100000, 20363, 100000, 100000, -16400, 29210, -22822, 200000, 400000, -28745, 16945, 4368, 30500, 19564, 200000, 30754, 600000, -30475, 600000, 100000, 24830, 22769, -27995, 3869, -28090].span()
};
    let tree_10 = xgb_inference::Tree {
    base_weights: array![259, 64229, -41347, -55995, 93397, 41706, -67335, 23916, -27457, 96708, -764, -26964, 29163, -81084, 26339, -17938, 22403, -3695, 30093, -94314, 49011, -30097, -49662, 29382, -19541, 21068, -26790].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 15, 0, 17, 0, 0, 0, 19, 0, 0, 0, 0, 0, 21, 23, 0, 25, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 16, 0, 18, 0, 0, 0, 20, 0, 0, 0, 0, 0, 22, 24, 0, 26, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 4, 4, 20, 4, 4, 4, 0, 12, 0, 0, 0, 12, 0, 0, 0, 0, 0, 16, 17, 0, 18, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 300000, 300000, 500000, 100000, 600000, 100000, -27457, 100000, -764, -26964, 29163, 300000, 26339, -17938, 22403, -3695, 30093, 200000, 400000, -30097, 600000, 29382, -19541, 21068, -26790].span()
};
    let tree_11 = xgb_inference::Tree {
    base_weights: array![293, 69881, -36332, -26573, 29875, -81024, 29136, -92721, 44075, -29762, -56117, 27136, -18107, 20688, -27201].span(),
    left_children: array![1, 3, 5, 0, 0, 7, 0, 9, 11, 0, 13, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 8, 0, 10, 12, 0, 14, 0, 0, 0, 0].span(),
    split_indices: array![4, 4, 4, 0, 0, 12, 0, 16, 17, 0, 18, 0, 0, 0, 0].span(),
    split_conditions: array![300000, 100000, 600000, -26573, 29875, 300000, 29136, 200000, 400000, -29762, 600000, 27136, -18107, 20688, -27201].span()
};
    let tree_12 = xgb_inference::Tree {
    base_weights: array![353, 68130, -35121, -25431, 29438, -78523, 28559, -90502, 39493, -29173, -52417, 25090, -16746, 19153, -26202].span(),
    left_children: array![1, 3, 5, 0, 0, 7, 0, 9, 11, 0, 13, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 8, 0, 10, 12, 0, 14, 0, 0, 0, 0].span(),
    split_indices: array![4, 4, 4, 0, 0, 12, 0, 16, 17, 0, 18, 0, 0, 0, 0].span(),
    split_conditions: array![300000, 100000, 600000, -25431, 29438, 300000, 28559, 200000, 400000, -29173, 600000, 25090, -16746, 19153, -26202].span()
};
    let tree_13 = xgb_inference::Tree {
    base_weights: array![442, 66157, -33687, -24195, 28970, -75594, 27906, -87821, 35238, -29176, -52054, 23192, -15474, 17700, -23561].span(),
    left_children: array![1, 3, 5, 0, 0, 7, 0, 9, 11, 0, 13, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 8, 0, 10, 12, 0, 14, 0, 0, 0, 0].span(),
    split_indices: array![4, 4, 4, 0, 0, 12, 0, 18, 17, 0, 18, 0, 0, 0, 0].span(),
    split_conditions: array![300000, 100000, 600000, -24195, 28970, 300000, 27906, 500000, 400000, -29176, 600000, 23192, -15474, 17700, -23561].span()
};
    let tree_14 = xgb_inference::Tree {
    base_weights: array![563, 57883, -35984, -48535, 86091, 1212, -79616, 3925, -22427, 26870, 8295, 64855, -18310, 16437, -28213, 22491, 4088, -34793, 19995, 43870, -53240, 16486, 2995, 2111, -20912].span(),
    left_children: array![1, 3, 5, 7, 9, 11, 13, 0, 0, 0, 0, 15, 17, 0, 0, 0, 0, 19, 0, 21, 23, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 10, 12, 14, 0, 0, 0, 0, 16, 18, 0, 0, 0, 0, 20, 0, 22, 24, 0, 0, 0, 0].span(),
    split_indices: array![8, 19, 9, 4, 17, 20, 18, 0, 0, 0, 0, 4, 4, 0, 0, 0, 0, 18, 0, 14, 19, 0, 0, 0, 0].span(),
    split_conditions: array![400000, 400000, 100000, 300000, 300000, 100000, 200000, 3925, -22427, 26870, 8295, 500000, 600000, 16437, -28213, 22491, 4088, 200000, 19995, 500000, 200000, 16486, 2995, 2111, -20912].span()
};
    let tree_15 = xgb_inference::Tree {
    base_weights: array![1433, 62133, -29817, -21831, 28010, -66328, 26340, -28416, -8028, -54325, 36961, -2495, -21426, -5582, 17522].span(),
    left_children: array![1, 3, 5, 0, 0, 7, 0, 0, 9, 11, 13, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 8, 0, 0, 10, 12, 14, 0, 0, 0, 0].span(),
    split_indices: array![4, 4, 4, 0, 0, 18, 0, 0, 10, 11, 14, 0, 0, 0, 0].span(),
    split_conditions: array![300000, 100000, 600000, -21831, 28010, 500000, 26340, -28416, 100000, 200000, 500000, -2495, -21426, -5582, 17522].span()
};
    let tree_16 = xgb_inference::Tree {
    base_weights: array![1099, 59206, -27930, -20426, 27310, -61914, 25339, -77391, 37915, -3571, -25386, -2493, 18541].span(),
    left_children: array![1, 3, 5, 0, 0, 7, 0, 9, 11, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 8, 0, 10, 12, 0, 0, 0, 0].span(),
    split_indices: array![4, 4, 4, 0, 0, 12, 0, 0, 7, 0, 0, 0, 0].span(),
    split_conditions: array![300000, 100000, 600000, -20426, 27310, 300000, 25339, 200000, 100000, -3571, -25386, -2493, 18541].span()
};
    let tree_17 = xgb_inference::Tree {
    base_weights: array![1824, 24779, -16386, 61643, -41557, 24294, -1784, -68968, 26758, -27095, -15829, 20782, -7401, -20931, 14183, 6097, -11481].span(),
    left_children: array![1, 0, 3, 5, 7, 0, 0, 9, 11, 0, 13, 0, 15, 0, 0, 0, 0].span(),
    right_children: array![2, 0, 4, 6, 8, 0, 0, 10, 12, 0, 14, 0, 16, 0, 0, 0, 0].span(),
    split_indices: array![8, 0, 18, 11, 7, 0, 0, 18, 19, 0, 10, 0, 6, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 24779, 200000, 200000, 100000, 24294, -1784, 500000, 400000, -27095, 100000, 20782, 100000, -20931, 14183, 6097, -11481].span()
};
    let tree_18 = xgb_inference::Tree {
    base_weights: array![2464, 55737, -23028, -17312, 25800, -51779, 23097, -26583, 2142, -39863, 33734, -617, -16944, -2248, 16255].span(),
    left_children: array![1, 3, 5, 0, 0, 7, 0, 0, 9, 11, 13, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 8, 0, 0, 10, 12, 14, 0, 0, 0, 0].span(),
    split_indices: array![4, 4, 4, 0, 0, 18, 0, 0, 10, 11, 2, 0, 0, 0, 0].span(),
    split_conditions: array![300000, 100000, 600000, -17312, 25800, 500000, 23097, -26583, 100000, 200000, 500000, -617, -16944, -2248, 16255].span()
};
    let tree_19 = xgb_inference::Tree {
    base_weights: array![2187, 39113, -29502, -16406, 58201, -45134, 13868, -2969, 23952, 10049, -60759, -7055, 12136, -24409, -9503, -15920, 10999].span(),
    left_children: array![1, 3, 5, 0, 7, 9, 11, 0, 0, 0, 13, 0, 0, 0, 15, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 8, 10, 12, 0, 0, 0, 14, 0, 0, 0, 16, 0, 0].span(),
    split_indices: array![17, 12, 7, 0, 19, 18, 1, 0, 0, 0, 16, 0, 0, 0, 3, 0, 0].span(),
    split_conditions: array![400000, 100000, 100000, -16406, 400000, 200000, 100000, -2969, 23952, 10049, 200000, -7055, 12136, -24409, 100000, -15920, 10999].span()
};
    let tree_20 = xgb_inference::Tree {
    base_weights: array![1253, 50188, -20954, -3357, 22932, -44960, 20467, -24938, 4, -25428, 14506, 9537, -16088].span(),
    left_children: array![1, 3, 5, 0, 0, 7, 0, 0, 9, 11, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 8, 0, 0, 10, 12, 0, 0, 0].span(),
    split_indices: array![4, 4, 4, 0, 0, 18, 0, 0, 12, 18, 0, 0, 0].span(),
    split_conditions: array![300000, 200000, 600000, -3357, 22932, 500000, 20467, -24938, 300000, 700000, 14506, 9537, -16088].span()
};
    let tree_21 = xgb_inference::Tree {
    base_weights: array![2368, -22607, 37089, 17270, -54195, -2925, 60513, -23383, -11419, 4745, -5896, 20656, 5751, -16691, 9724].span(),
    left_children: array![1, 3, 5, 0, 7, 9, 11, 0, 13, 0, 0, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 8, 10, 12, 0, 14, 0, 0, 0, 0, 0, 0].span(),
    split_indices: array![7, 18, 18, 0, 18, 2, 6, 0, 10, 0, 0, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 200000, 700000, 17270, 500000, 600000, 100000, -23383, 100000, 4745, -5896, 20656, 5751, -16691, 9724].span()
};
    let tree_22 = xgb_inference::Tree {
    base_weights: array![2530, 44573, -17300, 20864, -2975, -38520, 18056, -22933, 59, -20778, 11516, -15441, 2388].span(),
    left_children: array![1, 3, 5, 0, 0, 7, 0, 0, 9, 11, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 8, 0, 0, 10, 12, 0, 0, 0].span(),
    split_indices: array![4, 3, 4, 0, 0, 18, 0, 0, 12, 10, 0, 0, 0].span(),
    split_conditions: array![300000, 100000, 600000, 20864, -2975, 500000, 18056, -22933, 300000, 100000, 11516, -15441, 2388].span()
};
    let tree_23 = xgb_inference::Tree {
    base_weights: array![2838, 39858, -15135, -2619, 19514, -34601, 16735, -21602, -417, -7941, 7320].span(),
    left_children: array![1, 3, 5, 0, 0, 7, 0, 0, 9, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 8, 0, 0, 10, 0, 0].span(),
    split_indices: array![4, 4, 4, 0, 0, 18, 0, 0, 1, 0, 0].span(),
    split_conditions: array![300000, 200000, 600000, -2619, 19514, 500000, 16735, -21602, 300000, -7941, 7320].span()
};
    let tree_24 = xgb_inference::Tree {
    base_weights: array![3196, -17569, 28885, 13881, -42860, -3420, 42112, -19821, -8939, 15982, 3121, -8262, 3962].span(),
    left_children: array![1, 3, 5, 0, 7, 0, 9, 0, 11, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 8, 0, 10, 0, 12, 0, 0, 0, 0].span(),
    split_indices: array![7, 18, 1, 0, 18, 0, 6, 0, 19, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 200000, 100000, 13881, 500000, -3420, 100000, -19821, 400000, 15982, 3121, -8262, 3962].span()
};
    let tree_25 = xgb_inference::Tree {
    base_weights: array![2857, 35141, -12762, 17914, -3545, -14822, 11136, 31529, -5086, 15035, -117].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 7, 9, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 8, 10, 0, 0, 0].span(),
    split_indices: array![4, 3, 18, 0, 0, 0, 16, 6, 0, 0, 0].span(),
    split_conditions: array![300000, 100000, 500000, 17914, -3545, -14822, 200000, 100000, -5086, 15035, -117].span()
};
    let tree_26 = xgb_inference::Tree {
    base_weights: array![3321, 31540, -10184, 16597, -3015, -12787, 10174, -5984, 24443, -444, 12354].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 7, 0, 9, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 8, 0, 10, 0, 0].span(),
    split_indices: array![4, 3, 18, 0, 0, 0, 14, 0, 7, 0, 0].span(),
    split_conditions: array![300000, 100000, 500000, 16597, -3015, -12787, 600000, -5984, 100000, -444, 12354].span()
};
    let tree_27 = xgb_inference::Tree {
    base_weights: array![3344, 16522, -23566, 17856, -7467, -80, -11471, -23608, 7197, -11473, 1162].span(),
    left_children: array![1, 3, 5, 0, 7, 0, 0, 9, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 8, 0, 0, 10, 0, 0, 0].span(),
    split_indices: array![6, 11, 19, 0, 7, 0, 0, 2, 0, 0, 0].span(),
    split_conditions: array![100000, 200000, 400000, 17856, 100000, -80, -11471, 500000, 7197, -11473, 1162].span()
};
    let tree_28 = xgb_inference::Tree {
    base_weights: array![2991, 14932, -20598, 16539, -6100, -9643, -310, -19883, 6124, -10865, 1379].span(),
    left_children: array![1, 3, 5, 0, 7, 0, 0, 9, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 8, 0, 0, 10, 0, 0, 0].span(),
    split_indices: array![6, 11, 8, 0, 7, 0, 0, 16, 0, 0, 0].span(),
    split_conditions: array![100000, 200000, 800000, 16539, 100000, -9643, -310, 200000, 6124, -10865, 1379].span()
};
    let tree_29 = xgb_inference::Tree {
    base_weights: array![2696, 8282, -9038, -13322, 6283, -14925, 8660, 2717, -10232].span(),
    left_children: array![1, 0, 3, 0, 5, 7, 0, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 6, 8, 0, 0, 0].span(),
    split_indices: array![4, 0, 1, 0, 7, 18, 0, 0, 0].span(),
    split_conditions: array![300000, 8282, 100000, -13322, 100000, 600000, 8660, 2717, -10232].span()
};
    let tree_30 = xgb_inference::Tree {
    base_weights: array![1386, 12571, -5858, -6140, 29219, 6308, -8859, 12527, 443].span(),
    left_children: array![1, 3, 0, 5, 7, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 6, 8, 0, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 4, 20, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -5858, 300000, 300000, 6308, -8859, 12527, 443].span()
};
    let tree_31 = xgb_inference::Tree {
    base_weights: array![1653, -13218, 18793, -10744, 3375, -608, 9683].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 0].span(),
    split_indices: array![7, 19, 18, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 400000, 700000, -10744, 3375, -608, 9683].span()
};
    let tree_32 = xgb_inference::Tree {
    base_weights: array![1390, 6677, -8743, -24918, 13871, -10342, -364, -862, 7094].span(),
    left_children: array![1, 0, 3, 5, 7, 0, 0, 0, 0].span(),
    right_children: array![2, 0, 4, 6, 8, 0, 0, 0, 0].span(),
    split_indices: array![4, 0, 2, 7, 1, 0, 0, 0, 0].span(),
    split_conditions: array![300000, 6677, 500000, 100000, 300000, -10342, -364, -862, 7094].span()
};
    let tree_33 = xgb_inference::Tree {
    base_weights: array![1267, 11782, -5431, -5500, 8141, 4949, -7251].span(),
    left_children: array![1, 3, 0, 5, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 6, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 4, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -5431, 300000, 8141, 4949, -7251].span()
};
    let tree_34 = xgb_inference::Tree {
    base_weights: array![971, -12574, 16285, 3702, -8160, -150, 8136].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 0].span(),
    split_indices: array![7, 4, 18, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, 700000, 3702, -8160, -150, 8136].span()
};
    let tree_35 = xgb_inference::Tree {
    base_weights: array![1188, 10652, -4821, -4976, 7372, 3696, -5879].span(),
    left_children: array![1, 3, 0, 5, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 6, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 4, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -4821, 300000, 7372, 3696, -5879].span()
};
    let tree_36 = xgb_inference::Tree {
    base_weights: array![906, -12532, 15945, -9437, 2671, 7984, 2].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 0].span(),
    split_indices: array![7, 19, 6, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 400000, 100000, -9437, 2671, 7984, 2].span()
};
    let tree_37 = xgb_inference::Tree {
    base_weights: array![805, -5740, 8743, -9457, 24688, -10175, 4940, -1066, 11814].span(),
    left_children: array![1, 0, 3, 5, 7, 0, 0, 0, 0].span(),
    right_children: array![2, 0, 4, 6, 8, 0, 0, 0, 0].span(),
    split_indices: array![14, 0, 7, 19, 20, 0, 0, 0, 0].span(),
    split_conditions: array![600000, -5740, 100000, 400000, 100000, -10175, 4940, -1066, 11814].span()
};
    let tree_38 = xgb_inference::Tree {
    base_weights: array![572, 5248, -8136, -21611, 5165, -1326, -8386].span(),
    left_children: array![1, 0, 3, 5, 0, 0, 0].span(),
    right_children: array![2, 0, 4, 6, 0, 0, 0].span(),
    split_indices: array![4, 0, 2, 20, 0, 0, 0].span(),
    split_conditions: array![300000, 5248, 800000, 200000, 5165, -1326, -8386].span()
};
    let tree_39 = xgb_inference::Tree {
    base_weights: array![495, 5941, -7026, -21668, 10706, -9666, -450, -620, 5550].span(),
    left_children: array![1, 0, 3, 5, 7, 0, 0, 0, 0].span(),
    right_children: array![2, 0, 4, 6, 8, 0, 0, 0, 0].span(),
    split_indices: array![11, 0, 7, 16, 20, 0, 0, 0, 0].span(),
    split_conditions: array![200000, 5941, 100000, 200000, 200000, -9666, -450, -620, 5550].span()
};
    let tree_40 = xgb_inference::Tree {
    base_weights: array![441, 11098, -12918, 29569, -6443, 3124, -9658, 11457, 1927].span(),
    left_children: array![1, 3, 5, 7, 0, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 8, 0, 0, 0, 0, 0].span(),
    split_indices: array![18, 10, 17, 4, 0, 0, 0, 0, 0].span(),
    split_conditions: array![600000, 200000, 400000, 400000, -6443, 3124, -9658, 11457, 1927].span()
};
    let tree_41 = xgb_inference::Tree {
    base_weights: array![401, 9161, -4473, -1572, 6561].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -4473, -1572, 6561].span()
};
    let tree_42 = xgb_inference::Tree {
    base_weights: array![379, -5358, 7887, -2337, 6256].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![14, 0, 7, 0, 0].span(),
    split_conditions: array![600000, -5358, 100000, -2337, 6256].span()
};
    let tree_43 = xgb_inference::Tree {
    base_weights: array![40, 9825, -12154, 7795, -5624, -7572, 1700].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 0].span(),
    split_indices: array![18, 10, 1, 0, 0, 0, 0].span(),
    split_conditions: array![600000, 200000, 300000, 7795, -5624, -7572, 1700].span()
};
    let tree_44 = xgb_inference::Tree {
    base_weights: array![-585, -4773, 5996, -4860, 16944, -784, 10374].span(),
    left_children: array![1, 0, 3, 0, 5, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 6, 0, 0].span(),
    split_indices: array![14, 0, 20, 0, 7, 0, 0].span(),
    split_conditions: array![600000, -4773, 100000, -4860, 100000, -784, 10374].span()
};
    let tree_45 = xgb_inference::Tree {
    base_weights: array![-377, 4314, -7743, -19428, 4464, -965, -7652].span(),
    left_children: array![1, 0, 3, 5, 0, 0, 0].span(),
    right_children: array![2, 0, 4, 6, 0, 0, 0].span(),
    split_indices: array![4, 0, 2, 20, 0, 0, 0].span(),
    split_conditions: array![300000, 4314, 800000, 200000, 4464, -965, -7652].span()
};
    let tree_46 = xgb_inference::Tree {
    base_weights: array![-258, 7993, -4441, -2034, 6517].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -4441, -2034, 6517].span()
};
    let tree_47 = xgb_inference::Tree {
    base_weights: array![-164, 4013, -7090, -18529, 4862, 397, -9732].span(),
    left_children: array![1, 0, 3, 5, 0, 0, 0].span(),
    right_children: array![2, 0, 4, 6, 0, 0, 0].span(),
    split_indices: array![4, 0, 10, 0, 0, 0, 0].span(),
    split_conditions: array![300000, 4013, 200000, 300000, 4862, 397, -9732].span()
};
    let tree_48 = xgb_inference::Tree {
    base_weights: array![-239, 6431, -3590, -2096, 5801].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -3590, -2096, 5801].span()
};
    let tree_49 = xgb_inference::Tree {
    base_weights: array![-139, -9206, 9794, 3576, -6816, 4739, -82].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 0].span(),
    split_indices: array![7, 4, 6, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, 100000, 3576, -6816, 4739, -82].span()
};
    let tree_50 = xgb_inference::Tree {
    base_weights: array![141, 3317, -5665, -7344, 8212, -2477, 6425].span(),
    left_children: array![1, 0, 3, 0, 5, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 6, 0, 0].span(),
    split_indices: array![4, 0, 18, 0, 2, 0, 0].span(),
    split_conditions: array![300000, 3317, 500000, -7344, 500000, -2477, 6425].span()
};
    let tree_51 = xgb_inference::Tree {
    base_weights: array![78, 7708, -2922, 5227, -1909].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![18, 2, 0, 0, 0].span(),
    split_conditions: array![600000, 600000, -2922, 5227, -1909].span()
};
    let tree_52 = xgb_inference::Tree {
    base_weights: array![134, -8309, 9133, -6017, 1696, 308, 3814].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 0].span(),
    split_indices: array![7, 19, 20, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 400000, 200000, -6017, 1696, 308, 3814].span()
};
    let tree_53 = xgb_inference::Tree {
    base_weights: array![48, 6034, -3167, -2113, 5624].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -3167, -2113, 5624].span()
};
    let tree_54 = xgb_inference::Tree {
    base_weights: array![106, -8211, 8936, -5237, 1023, 511, 3519].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 0].span(),
    split_indices: array![7, 19, 20, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 400000, 200000, -5237, 1023, 511, 3519].span()
};
    let tree_55 = xgb_inference::Tree {
    base_weights: array![35, 3316, -7339, 2606, -7787].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![19, 0, 18, 0, 0].span(),
    split_conditions: array![400000, 3316, 600000, 2606, -7787].span()
};
    let tree_56 = xgb_inference::Tree {
    base_weights: array![-347, -8165, 8086, -4965, 847, 559, 3089].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 0].span(),
    split_indices: array![7, 19, 20, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 400000, 200000, -4965, 847, 559, 3089].span()
};
    let tree_57 = xgb_inference::Tree {
    base_weights: array![-338, 3179, -7523, 1857, -6187].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![19, 0, 8, 0, 0].span(),
    split_conditions: array![400000, 3179, 900000, 1857, -6187].span()
};
    let tree_58 = xgb_inference::Tree {
    base_weights: array![-467, 3154, -6283, -7304, 2393].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![4, 0, 18, 0, 0].span(),
    split_conditions: array![300000, 3154, 500000, -7304, 2393].span()
};
    let tree_59 = xgb_inference::Tree {
    base_weights: array![-684, 5252, -3309, 4227, -3083].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 20, 0, 0, 0].span(),
    split_conditions: array![100000, 400000, -3309, 4227, -3083].span()
};
    let tree_60 = xgb_inference::Tree {
    base_weights: array![-893, -9140, 8150, -4118, -94, 475, 3191].span(),
    left_children: array![1, 3, 5, 0, 0, 0, 0].span(),
    right_children: array![2, 4, 6, 0, 0, 0, 0].span(),
    split_indices: array![7, 18, 20, 0, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, 200000, -4118, -94, 475, 3191].span()
};
    let tree_61 = xgb_inference::Tree {
    base_weights: array![-735, 2942, -6367, -6419, 1767].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![4, 0, 18, 0, 0].span(),
    split_conditions: array![300000, 2942, 500000, -6419, 1767].span()
};
    let tree_62 = xgb_inference::Tree {
    base_weights: array![-862, 6660, -3042, 4403, -1525].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![18, 2, 0, 0, 0].span(),
    split_conditions: array![600000, 600000, -3042, 4403, -1525].span()
};
    let tree_63 = xgb_inference::Tree {
    base_weights: array![-634, -8530, 2359, -3772, -156].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![7, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, 2359, -3772, -156].span()
};
    let tree_64 = xgb_inference::Tree {
    base_weights: array![-752, 2750, -7243, -5824, 1605].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![19, 0, 20, 0, 0].span(),
    split_conditions: array![400000, 2750, 100000, -5824, 1605].span()
};
    let tree_65 = xgb_inference::Tree {
    base_weights: array![-827, 6068, -2779, -1155, 3952].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![18, 8, 0, 0, 0].span(),
    split_conditions: array![600000, 700000, -2779, -1155, 3952].span()
};
    let tree_66 = xgb_inference::Tree {
    base_weights: array![-576, -8149, 2263, -3474, -253].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![7, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, 2263, -3474, -253].span()
};
    let tree_67 = xgb_inference::Tree {
    base_weights: array![-693, 5206, -3256, 4118, -2833].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 20, 0, 0, 0].span(),
    split_conditions: array![100000, 400000, -3256, 4118, -2833].span()
};
    let tree_68 = xgb_inference::Tree {
    base_weights: array![-875, 2576, -7098, 1636, -5668].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![19, 0, 8, 0, 0].span(),
    split_conditions: array![400000, 2576, 900000, 1636, -5668].span()
};
    let tree_69 = xgb_inference::Tree {
    base_weights: array![-916, -8126, 2088, -3423, -253].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![7, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, 2088, -3423, -253].span()
};
    let tree_70 = xgb_inference::Tree {
    base_weights: array![-961, 2731, -6439, -4904, 2467].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![4, 0, 2, 0, 0].span(),
    split_conditions: array![300000, 2731, 500000, -4904, 2467].span()
};
    let tree_71 = xgb_inference::Tree {
    base_weights: array![-624, 5085, -3160, -1962, 5081].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -3160, -1962, 5081].span()
};
    let tree_72 = xgb_inference::Tree {
    base_weights: array![-442, -7386, 2091, -2775, -563].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![7, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, 2091, -2775, -563].span()
};
    let tree_73 = xgb_inference::Tree {
    base_weights: array![-562, 2788, -6106, -5200, 1603].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![4, 0, 8, 0, 0].span(),
    split_conditions: array![300000, 2788, 800000, -5200, 1603].span()
};
    let tree_74 = xgb_inference::Tree {
    base_weights: array![-567, 4967, -3050, 3568, -2138].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 20, 0, 0, 0].span(),
    split_conditions: array![100000, 400000, -3050, 3568, -2138].span()
};
    let tree_75 = xgb_inference::Tree {
    base_weights: array![-727, -2352, 2078].span(),
    left_children: array![1, 0, 0].span(),
    right_children: array![2, 0, 0].span(),
    split_indices: array![7, 0, 0].span(),
    split_conditions: array![100000, -2352, 2078].span()
};
    let tree_76 = xgb_inference::Tree {
    base_weights: array![-566, 2506, -6524, -5555, 1783].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![19, 0, 20, 0, 0].span(),
    split_conditions: array![400000, 2506, 100000, -5555, 1783].span()
};
    let tree_77 = xgb_inference::Tree {
    base_weights: array![-667, 5418, -2480, 4222, -1859].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![18, 2, 0, 0, 0].span(),
    split_conditions: array![600000, 600000, -2480, 4222, -1859].span()
};
    let tree_78 = xgb_inference::Tree {
    base_weights: array![-489, -2137, 1974].span(),
    left_children: array![1, 0, 0].span(),
    right_children: array![2, 0, 0].span(),
    split_indices: array![7, 0, 0].span(),
    split_conditions: array![100000, -2137, 1974].span()
};
    let tree_79 = xgb_inference::Tree {
    base_weights: array![-377, 2390, -5979, 1514, -4972].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![19, 0, 8, 0, 0].span(),
    split_conditions: array![400000, 2390, 900000, 1514, -4972].span()
};
    let tree_80 = xgb_inference::Tree {
    base_weights: array![-493, 4446, -2741, -1954, 4789].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -2741, -1954, 4789].span()
};
    let tree_81 = xgb_inference::Tree {
    base_weights: array![-322, 2681, -5715, -4451, 2302].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![4, 0, 2, 0, 0].span(),
    split_conditions: array![300000, 2681, 500000, -4451, 2302].span()
};
    let tree_82 = xgb_inference::Tree {
    base_weights: array![-120, -1921, 1942].span(),
    left_children: array![1, 0, 0].span(),
    right_children: array![2, 0, 0].span(),
    split_indices: array![7, 0, 0].span(),
    split_conditions: array![100000, -1921, 1942].span()
};
    let tree_83 = xgb_inference::Tree {
    base_weights: array![-80, 4894, -2697, -1590, 4574].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -2697, -1590, 4574].span()
};
    let tree_84 = xgb_inference::Tree {
    base_weights: array![9, 2622, -5222, -4478, 1974].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![4, 0, 3, 0, 0].span(),
    split_conditions: array![300000, 2622, 100000, -4478, 1974].span()
};
    let tree_85 = xgb_inference::Tree {
    base_weights: array![27, -1912, 2018].span(),
    left_children: array![1, 0, 0].span(),
    right_children: array![2, 0, 0].span(),
    split_indices: array![7, 0, 0].span(),
    split_conditions: array![100000, -1912, 2018].span()
};
    let tree_86 = xgb_inference::Tree {
    base_weights: array![41, 2324, -5357, 1790, -3846].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![19, 0, 7, 0, 0].span(),
    split_conditions: array![400000, 2324, 100000, 1790, -3846].span()
};
    let tree_87 = xgb_inference::Tree {
    base_weights: array![82, -1937, 2091].span(),
    left_children: array![1, 0, 0].span(),
    right_children: array![2, 0, 0].span(),
    split_indices: array![7, 0, 0].span(),
    split_conditions: array![100000, -1937, 2091].span()
};
    let tree_88 = xgb_inference::Tree {
    base_weights: array![91, 4817, -2554, 4458, -1388].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 4, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -2554, 4458, -1388].span()
};
    let tree_89 = xgb_inference::Tree {
    base_weights: array![178, -1842, 2030].span(),
    left_children: array![1, 0, 0].span(),
    right_children: array![2, 0, 0].span(),
    split_indices: array![7, 0, 0].span(),
    split_conditions: array![100000, -1842, 2030].span()
};
    let tree_90 = xgb_inference::Tree {
    base_weights: array![165, 2567, -4478, -4559, 2178].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![2, 0, 7, 0, 0].span(),
    split_conditions: array![400000, 2567, 100000, -4559, 2178].span()
};
    let tree_91 = xgb_inference::Tree {
    base_weights: array![150, 5157, -2678, -1578, 4644].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![6, 18, 0, 0, 0].span(),
    split_conditions: array![100000, 500000, -2678, -1578, 4644].span()
};
    let tree_92 = xgb_inference::Tree {
    base_weights: array![195, 6014, -2245, 4135, -1433].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![18, 2, 0, 0, 0].span(),
    split_conditions: array![600000, 600000, -2245, 4135, -1433].span()
};
    let tree_93 = xgb_inference::Tree {
    base_weights: array![239, 2349, -5088, 1906, -3834].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![19, 0, 7, 0, 0].span(),
    split_conditions: array![400000, 2349, 100000, 1906, -3834].span()
};
    let tree_94 = xgb_inference::Tree {
    base_weights: array![257, -1770, 1994].span(),
    left_children: array![1, 0, 0].span(),
    right_children: array![2, 0, 0].span(),
    split_indices: array![7, 0, 0].span(),
    split_conditions: array![100000, -1770, 1994].span()
};
    let tree_95 = xgb_inference::Tree {
    base_weights: array![228, 2372, -4483, -4670, 1938].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![4, 0, 8, 0, 0].span(),
    split_conditions: array![300000, 2372, 800000, -4670, 1938].span()
};
    let tree_96 = xgb_inference::Tree {
    base_weights: array![77, 2313, -4657, -3509, 1671].span(),
    left_children: array![1, 0, 3, 0, 0].span(),
    right_children: array![2, 0, 4, 0, 0].span(),
    split_indices: array![17, 0, 7, 0, 0].span(),
    split_conditions: array![400000, 2313, 100000, -3509, 1671].span()
};
    let tree_97 = xgb_inference::Tree {
    base_weights: array![156, 5745, -2163, 3779, -1179].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![18, 2, 0, 0, 0].span(),
    split_conditions: array![600000, 600000, -2163, 3779, -1179].span()
};
    let tree_98 = xgb_inference::Tree {
    base_weights: array![208, 5618, -2032, -206, 2737].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![0, 8, 0, 0, 0].span(),
    split_conditions: array![400000, 1000000, -2032, -206, 2737].span()
};
    let tree_99 = xgb_inference::Tree {
    base_weights: array![256, 5317, -1938, 3314, -902].span(),
    left_children: array![1, 3, 0, 0, 0].span(),
    right_children: array![2, 4, 0, 0, 0].span(),
    split_indices: array![18, 2, 0, 0, 0].span(),
    split_conditions: array![600000, 600000, -1938, 3314, -902].span()
};
    let num_trees: u32 = 100;
    let base_score: i32 = 48224;
    let opt_type: u8 = 1;
    let trees: Span<xgb_inference::Tree> = array![tree_0, tree_1, tree_2, tree_3, tree_4, tree_5, tree_6, tree_7, tree_8, tree_9, tree_10, tree_11, tree_12, tree_13, tree_14, tree_15, tree_16, tree_17, tree_18, tree_19, tree_20, tree_21, tree_22, tree_23, tree_24, tree_25, tree_26, tree_27, tree_28, tree_29, tree_30, tree_31, tree_32, tree_33, tree_34, tree_35, tree_36, tree_37, tree_38, tree_39, tree_40, tree_41, tree_42, tree_43, tree_44, tree_45, tree_46, tree_47, tree_48, tree_49, tree_50, tree_51, tree_52, tree_53, tree_54, tree_55, tree_56, tree_57, tree_58, tree_59, tree_60, tree_61, tree_62, tree_63, tree_64, tree_65, tree_66, tree_67, tree_68, tree_69, tree_70, tree_71, tree_72, tree_73, tree_74, tree_75, tree_76, tree_77, tree_78, tree_79, tree_80, tree_81, tree_82, tree_83, tree_84, tree_85, tree_86, tree_87, tree_88, tree_89, tree_90, tree_91, tree_92, tree_93, tree_94, tree_95, tree_96, tree_97, tree_98, tree_99].span();
    let mut result: i32 = xgb_inference::accumulate_scores_from_trees(num_trees, trees, input_vector, 0, 0);

    if opt_type == 1 {
        // Implement logic here
    } else {
        result = result + base_score;
    }

    return result;
}