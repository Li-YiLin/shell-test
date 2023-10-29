# 本地文件创建git仓库

1.初始化仓库

```
git init
```

2.提交文件到暂存区

```
# 提交某个文件
git add xxx.xxx
# 提交全部文件
git add .  
```

2.5查看文件状态

```
git status -sb
```

3.提交到本地仓库

```
git commit -m "xxx"
```

4.提交到远端github仓库

```
git remote add origin xxx
```

# github官方提示：
## create a new repository on the command line

```
echo "# shell-test" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin git@github.com:Li-YiLin/shell-test.git
git push -u origin main
```

## push an existing repository from the command line

```
git remote add origin git@github.com:Li-YiLin/shell-test.git
git branch -M main
git push -u origin main
```