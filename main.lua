-- variables

print('\n --- Variables')

varString = 'String'
varBool = true
varNumber = 1
varTable1 = {1,2,3}
varTable2 = {
    keyA = 'valueA',
    keyB = 'valueB',
    [10] = '10'
}

-- io

print('\n --- IO')

print('Hello World')
print('var', varString)
print('varTable', varTable1[1])
print('varTable', varTable2.keyA)
io.write('varTable ', varTable2[10], '\n')
-- io.write('\nRead io: ')
-- readIo = io.read()
-- print(readIo)

-- repetition

print('\n --- Repetition')

for i=0,3 do
    print(i)
end

i = 0
while i <= 3 do
    print(i)
    i = i + 1
end

-- selection

print('\n --- Selection')

if (varBool) then
    print('varBool')
end

if (not varBool) then
    print('varBool')
else
    print('not varBool')
end

if (not varBool) then
    print('varBool')
elseif varBool then
    print('varBoll elseif')
end


-- tables

print('\n --- Tables')

table.insert(varTable1, 20)
table.remove(varTable1, #varTable1)

for key,value in ipairs(varTable1) do
    print(key, value)
end

for key, value in pairs(varTable2) do
    print(key, value)
end

varTable3 = {
    name = 'lua',
    printName = function(self)
        print(self.name)
    end
}

varTable3:printName()


-- functions

print('\n--- Functions')

function foo(bar)
    print(bar)
end

foo('Hello')


-- module

print('\n--- Modules')

module = require './module'

sum = module.sum(1,2)
print(sum)

-- require './module'

-- sum = module.sum(1,2)
-- print(sum)
