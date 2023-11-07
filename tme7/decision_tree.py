import matplotlib.pyplot as plt
import math
import numpy as np
import pandas as pd

def Shannon(p):
    # P correspond à une distribution de probabilité
    if p == 0 or p == 1:
        return float(0)
    return -p*math.log(p, 2) - (1-p)*math.log(1-p, 2)

def Gini(p):
    if p == 0:
        return float(0)
    return 1 - p**2 - (1-p)**2

def Ambiguite(p):
    if p == 0 or p == 1:
        return float(0)
    if p > 1-p:
        return ((1-p)/p)*math.log(2, 2)
    return (p/(1-p))*math.log(2, 2)


import sys
import copy
class Node:
    def __init__(self, att_name):
        self.att_name = att_name
        self.children = None
        self.cl = None

    def is_leaf_node(self):
        return self.children is None

    def add_child(self, value, child):
        if self.children == None:
            self.children = dict()
        self.children[value] = child

    def add_leaf(self, cl):
        self.cl = cl
        self.children = None

    def classify(self, data, xai=False, path=''):
        if self.is_leaf_node():
            return self.cl, path + self.cl
        if data[self.att_name] in self.children:
            if xai:
                path += self.att_name + f': {data[self.att_name]}' + '->'
            return self.children[data[self.att_name]].classify(data, xai, path)
        else:
            print("attribute not found. :(")


class MonArbre:
    def __init__(self):
        self.root = None #class Node
        self.epsilon = 0.01

    def majoring_class(self, Y):
        valeurs, nb_fois = np.unique(Y, return_counts=True)
        return valeurs[np.argmax(nb_fois)]

    def shannon(self, P):
        somme = 0
        k = len(P)
        if k == 1:
            return float(0)
        for p in P:
            if p > 0:
                somme += p*math.log(p, k)
        return -somme
    
    def entropy(self, data):
        val, nb = np.unique(data, return_counts=True)
        P = np.asarray([i/len(data) for i in nb])
        return self.shannon(P)

    def build_tree(self, data_x, data_y, epsilon, feat_names):
        (nb_lig, nb_col) = data_x.shape

        class_entropy = self.entropy(data_y)
    
        if (class_entropy <= epsilon) or (nb_lig <= 1):
            node = Node("Label")
            node.add_leaf(self.majoring_class(data_y))
        else:
            gain_max = sys.float_info.min
            i_best = -1
            Xbest_values = None
    

            for i in range(nb_col):  # parcourir les colonnes
    
                sum1 = 0
                sum2 = 0
                X_j = data_x.iloc[:, i]  # X_j
                X_j = list(set(X_j))
    
                for v_j_l in X_j:  # parcourir toutes les valeurs de v_j
                    x_contient_v_j_l = data_x[data_x.iloc[:, i] == v_j_l]
                    p_vjl = len(x_contient_v_j_l) / len(data_x)
    
                    label_ = data_y[data_x.iloc[:, i] == v_j_l]
                    sum2 = self.entropy(label_)
                    sum1 += p_vjl * -sum2
                H_S_Y_Xj = - sum1
                info = class_entropy - H_S_Y_Xj
                if info > gain_max:
                    gain_max = info
                    i_best = i
                    Xbest_valeurs = copy.deepcopy(X_j)
                    
            if len(feat_names) > 0:
                node = Node(feat_names[i_best])
            else:
                node = Node(i_best)
            for v in Xbest_valeurs:
                node.add_child(v, self.build_tree(data_x[data_x.iloc[:, i_best] == v], data_y[data_x.iloc[:, i_best] == v], epsilon, feat_names))
        return node
        
        
    def fit(self, data_x, data_y):
        """
        data_x: pd.dataframe
        data_y: labels
        """
        self.root = self.build_tree(data_x, data_y, self.epsilon, data_x.columns)
            
        
    def predict(self, data) -> str:
        """
        predicts one data point i.e. runs through the tree
        """
        return self.root.classify(data)
        
    def predict_xai(self, data):
        return self.root.classify(data, xai=True)
