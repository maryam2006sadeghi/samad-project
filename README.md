توضیحات سیستم سفارش غذای دانشجویی :

این پایگاه داده برای مدیریت سیستم سفارش غذای دانشجویی طراحی شده است. ساختار آن شامل جداول زیر می‌باشد:

جداول اصلی :

1. person:
   - ذخیره اطلاعات کلی افراد (دانشجویان و اساتید)
   - شامل: شناسه، نام، کد ملی (منحصر به فرد با طول دقیق 10 کاراکتر)

2. student:
   - اطلاعات خاص دانشجویان
   - شامل: شماره دانشجویی، ارتباط با شخص، رشته تحصیلی

3. professor:
   - اطلاعات خاص اساتید
   - شامل: شماره پرسنلی، ارتباط با شخص، دپارتمان، مرتبه علمی

 جداول مربوط به منو و سفارشات

4. day:
   - مدیریت روزها و تاریخ‌ها
   - شامل: شناسه، نام روز، تاریخ (منحصر به فرد)

5. food:
   - لیست غذاهای موجود
   - شامل: شناسه، نام غذا، قیمت

6. menu:
   - منوی روزانه غذاها
   - شامل: ارتباط با روز و غذاهای موجود در آن روز

7. order_list:
   - ثبت سفارشات کاربران
   - شامل: شخص سفارش‌دهنده، روز مورد نظر، منوی انتخاب شده، تعداد غذا

 محدودیت‌ها و قیود:

- هر شخص فقط یک بار می‌تواند در سیستم ثبت شود (کد ملی منحصر به فرد)
- طول کد ملی باید دقیقاً 10 کاراکتر باشد

دیاگرام مربوطه :
https://github.com/maryam2006sadeghi/samad-project/commit/acffc15bccee7d2e59ed05e69867f6ed5703597c
