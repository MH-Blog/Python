import sys
import you_get
import requests
from threading import Thread


def chunks(l, n):
    """Yield successive n-sized chunks from l."""
    for i in range(0, len(l), n):
        yield l[i:i + n]


def gei_total_nums():
    url = 'https://api.bilibili.com/x/web-interface/view?aid=77798007'
    res = requests.get(url)
    videos = res.json()['data']['videos']
    numList = list(chunks(range(1, videos + 1), 10))
    return numList


def download(url, path, array):
    for i in array[:1]:
        aidUrl = url + str(i)
        print(aidUrl)
        sys.argv = ['you-get', '-o ', path, aidUrl]
        you_get.main()


def download1(url, path):
    sys.argv = ['you-get', '-o', path, url]
    you_get.main()


if __name__ == '__main__':
    # 分p数
    numList = gei_total_nums()
    # 视频网站的地址
    url = 'https://www.bilibili.com/video/av77798007/?p='
    # 视频输出的位置
    path = 'E:\下载\视频'
    ThreadList = []
    url1 = 'https://www.bilibili.com/video/av77798007/?p=2'
    download1(url1, path)
    # for num in numList:
    #     t = Thread(target=download, args=(url, path, num), name='线程%s' % (numList.index(num) + 1))
    #     ThreadList.append(t)
    #
    # for t in ThreadList[:1]:
    #     print(t.getName() + "  启动...")
    #     t.start()
    # for t in ThreadList[:1]:
    #     t.join()
