FROM python
COPY  ./src/My_ANIMATION.py /src/MyANIMATION.py
ENTRYPOINT ["python"]
CMD ["/src/MyANIMATION.py"]
