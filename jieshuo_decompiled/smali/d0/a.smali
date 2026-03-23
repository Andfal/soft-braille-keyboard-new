.class public Ld0/a;
.super Lz/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lz/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/String;[B)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lc0/b;

    invoke-direct {v0}, Lc0/b;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "https://aip.baidubce.com/rest/2.0/image-classify/v1/image-understanding/request"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https://aip.baidubce.com/rpc/2.0/ai_custom/v1/detection/huakuai2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lc0/d;->b:Lc0/d;

    invoke-virtual {v0, v1}, Lc0/b;->l(Lc0/d;)V

    goto :goto_0

    :cond_1
    const-string v1, "question"

    const-string v2, "\u8be6\u7ec6\u63cf\u8ff0\u8fd9\u5f20\u56fe\u7247\u7684\u5185\u5bb9\u548c\u4f4d\u7f6e"

    invoke-virtual {v0, v1, v2}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "output_CHN"

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, v0}, Lz/a;->d(Lc0/b;)V

    invoke-static {p2}, Lf0/c;->a([B)Ljava/lang/String;

    move-result-object p2

    const-string v1, "image"

    invoke-virtual {v0, v1, p2}, Lc0/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lc0/b;->o(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lz/a;->c(Lc0/b;)V

    invoke-virtual {p0, v0}, Lz/a;->e(Lc0/b;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
